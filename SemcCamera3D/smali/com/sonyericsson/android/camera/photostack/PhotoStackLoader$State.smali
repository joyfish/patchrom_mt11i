.class final enum Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;
.super Ljava/lang/Enum;
.source "PhotoStackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

.field public static final enum Pause:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

.field public static final enum Running:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

.field public static final enum Waiting:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    const-string v1, "Waiting"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Waiting:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    .line 150
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    const-string v1, "Running"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Running:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    .line 152
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Pause:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Waiting:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Running:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Pause:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 146
    const-class v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    return-object v0
.end method
