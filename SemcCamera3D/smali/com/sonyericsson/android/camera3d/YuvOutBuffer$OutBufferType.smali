.class public final enum Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;
.super Ljava/lang/Enum;
.source "YuvOutBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/YuvOutBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

.field public static final enum SWEEP_MULTIANGLE:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

.field public static final enum SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

.field public static final enum SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    const-string v1, "SWEEP_PANORAMA_3D"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    const-string v1, "SWEEP_PANORAMA_2D"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    const-string v1, "SWEEP_MULTIANGLE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_MULTIANGLE:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_MULTIANGLE:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->$VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->$VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    return-object v0
.end method
