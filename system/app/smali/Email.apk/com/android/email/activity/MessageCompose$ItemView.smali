.class public Lcom/android/email/activity/MessageCompose$ItemView;
.super Landroid/widget/RelativeLayout;
.source "MessageCompose.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14470
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14471
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 14476
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 14483
    return-void
.end method

.method public toggle()V
    .registers 1

    .prologue
    .line 14489
    return-void
.end method
