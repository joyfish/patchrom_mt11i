.class Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$2;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->preprocess([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;

.field private final synthetic val$transformMatrix:[F


# direct methods
.method constructor <init>(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;[F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$2;->this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;

    iput-object p2, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$2;->val$transformMatrix:[F

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$2;->this$0:Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;

    #getter for: Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;->access$1(Lcom/android/cameraics/panorama/MosaicRendererSurfaceView;)Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cameraics/panorama/MosaicRendererSurfaceView$2;->val$transformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/cameraics/panorama/MosaicRendererSurfaceViewRenderer;->preprocess([F)V

    .line 345
    return-void
.end method
