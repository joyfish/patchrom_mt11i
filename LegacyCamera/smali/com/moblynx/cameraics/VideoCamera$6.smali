.class Lcom/moblynx/cameraics/VideoCamera$6;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moblynx/cameraics/VideoCamera;->onRestorePreferencesClicked()V
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
    iput-object p1, p0, Lcom/moblynx/cameraics/VideoCamera$6;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    .line 2819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/moblynx/cameraics/VideoCamera$6;->this$0:Lcom/moblynx/cameraics/VideoCamera;

    #calls: Lcom/moblynx/cameraics/VideoCamera;->restorePreferences()V
    invoke-static {v0}, Lcom/moblynx/cameraics/VideoCamera;->access$40(Lcom/moblynx/cameraics/VideoCamera;)V

    .line 2822
    return-void
.end method
