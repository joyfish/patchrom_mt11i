.class Lcom/vipercn/viper4android/activity/ViPER4Android$2;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$2;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
