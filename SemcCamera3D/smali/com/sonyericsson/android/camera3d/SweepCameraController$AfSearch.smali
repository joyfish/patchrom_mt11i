.class Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;
.super Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfSearch"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFullPressed:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1263
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    .line 1264
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mFullPressed:Z

    .line 1265
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mCanceled:Z

    .line 1266
    return-void
.end method

.method private backToViewFinder(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1341
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLastExternalMemoryError()I

    move-result v0

    .line 1342
    .local v0, memoryError:I
    if-nez v0, :cond_0

    .line 1343
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1347
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mCanceled:Z

    .line 1348
    return-void

    .line 1345
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0
.end method


# virtual methods
.method public handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopAutoFocus()V

    .line 1275
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1276
    return-void
.end method

.method public handleAutoFocusDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1301
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleAutoFocusDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1303
    move v1, p2

    .line 1304
    .local v1, status:I
    instance-of v3, p3, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    if-eqz v3, :cond_0

    check-cast p3, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .end local p3
    move-object v0, p3

    .line 1308
    .local v0, result:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;
    :goto_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mCanceled:Z

    if-eqz v3, :cond_1

    .line 1309
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->backToViewFinder(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1331
    :goto_1
    return-void

    .end local v0           #result:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;
    .restart local p3
    :cond_0
    move-object v0, v2

    .line 1304
    goto :goto_0

    .line 1312
    .end local p3
    .restart local v0       #result:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1326
    const-string v2, "SweepCameraController"

    const-string v3, "invalid state"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mCanceled:Z

    goto :goto_1

    .line 1314
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doAfSuccessed(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$900(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V

    .line 1315
    new-instance v3, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v3, v4, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_1

    .line 1318
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doAfFailed()V
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1100(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1319
    new-instance v3, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v3, v4, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_1

    .line 1323
    :pswitch_2
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mCanceled:Z

    goto :goto_1

    .line 1312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mFullPressed:Z

    if-nez v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1377
    :goto_0
    return-void

    .line 1375
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0
.end method

.method public handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1292
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1293
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mFullPressed:Z

    if-nez v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1296
    :cond_0
    return-void
.end method

.method public handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1356
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mFullPressed:Z

    .line 1358
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-class v4, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;Ljava/lang/Class;)V

    .line 1359
    return-void
.end method

.method public handleKeyCaptureTouch(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 1364
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyCaptureTouch(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1365
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 1366
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const-class v3, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;Ljava/lang/Class;)V

    .line 1367
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1382
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1383
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->mFullPressed:Z

    if-nez v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1388
    :goto_0
    return-void

    .line 1386
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopAutoFocus()V

    .line 1285
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1286
    return-void
.end method
