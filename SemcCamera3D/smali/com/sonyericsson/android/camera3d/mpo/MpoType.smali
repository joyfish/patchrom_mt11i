.class public final enum Lcom/sonyericsson/android/camera3d/mpo/MpoType;
.super Ljava/lang/Enum;
.source "MpoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/mpo/MpoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/mpo/MpoType;

.field public static final enum MULTIANGLE:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

.field public static final enum STEREO:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera3d/mpo/MpoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/mpo/MpoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    const-string v1, "STEREO"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->STEREO:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    const-string v1, "MULTIANGLE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/mpo/MpoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->STEREO:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->$VALUES:[Lcom/sonyericsson/android/camera3d/mpo/MpoType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/mpo/MpoType;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/mpo/MpoType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->$VALUES:[Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/mpo/MpoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    return-object v0
.end method
