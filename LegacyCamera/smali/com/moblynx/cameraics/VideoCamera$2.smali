.class Lcom/moblynx/cameraics/VideoCamera$2;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/VideoCamera;->doOnResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moblynx/cameraics/VideoCamera;


# direct methods
.method constructor <init>(Lcom/moblynx/cameraics/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moblynx/cameraics/VideoCamera$2;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$2;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #calls: Lcom/moblynx/cameraics/VideoCamera;->showStorageHint()V
    invoke-static {v0}, Lcom/moblynx/cameraics/VideoCamera;->access$35(Lcom/moblynx/cameraics/VideoCamera;)V

    .line 1187
    return-void
.end method
