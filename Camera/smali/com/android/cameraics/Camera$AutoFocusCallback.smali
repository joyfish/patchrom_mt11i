.class final Lcom/android/cameraics/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cameraics/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/Camera;


# direct methods
.method private constructor <init>(Lcom/android/cameraics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/cameraics/Camera$AutoFocusCallback;->this$0:Lcom/android/cameraics/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cameraics/Camera;Lcom/android/cameraics/Camera$AutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/android/cameraics/Camera$AutoFocusCallback;-><init>(Lcom/android/cameraics/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/cameraics/Camera$AutoFocusCallback;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mPausing:Z
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$22(Lcom/android/cameraics/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/cameraics/Camera$AutoFocusCallback;->this$0:Lcom/android/cameraics/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/cameraics/Camera$AutoFocusCallback;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mFocusStartTime:J
    invoke-static {v3}, Lcom/android/cameraics/Camera;->access$45(Lcom/android/cameraics/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/cameraics/Camera;->mAutoFocusTime:J

    .line 1000
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAutoFocusTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/cameraics/Camera$AutoFocusCallback;->this$0:Lcom/android/cameraics/Camera;

    iget-wide v2, v2, Lcom/android/cameraics/Camera;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/android/cameraics/Camera$AutoFocusCallback;->this$0:Lcom/android/cameraics/Camera;

    const/4 v1, 0x1

    #calls: Lcom/android/cameraics/Camera;->setCameraState(I)V
    invoke-static {v0, v1}, Lcom/android/cameraics/Camera;->access$46(Lcom/android/cameraics/Camera;I)V

    .line 1002
    iget-object v0, p0, Lcom/android/cameraics/Camera$AutoFocusCallback;->this$0:Lcom/android/cameraics/Camera;

    #getter for: Lcom/android/cameraics/Camera;->mFocusManager:Lcom/android/cameraics/FocusManager;
    invoke-static {v0}, Lcom/android/cameraics/Camera;->access$32(Lcom/android/cameraics/Camera;)Lcom/android/cameraics/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/cameraics/FocusManager;->onAutoFocus(Z)V

    goto :goto_0
.end method
