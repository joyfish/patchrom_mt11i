.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .parameter "v"
    .parameter "direction"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .parameter "v"
    .parameter "direction"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .parameter "view"

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method getFrameTime()J
    .locals 2

    .prologue
    .line 129
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 92
    const/4 v0, 0x2

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "v"
    .parameter "event"

    .prologue
    .line 105
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .parameter "v"
    .parameter "info"

    .prologue
    .line 108
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "v"
    .parameter "event"

    .prologue
    .line 102
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 118
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 7
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v1

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 121
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "view"
    .parameter "action"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "view"
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0
    .parameter "v"
    .parameter "delegate"

    .prologue
    .line 99
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "hasTransientState"

    .prologue
    .line 115
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "mode"

    .prologue
    .line 136
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "mode"

    .prologue
    .line 96
    return-void
.end method
