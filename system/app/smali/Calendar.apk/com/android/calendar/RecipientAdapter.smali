.class public Lcom/android/calendar/RecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "RecipientAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getDefaultPhotoResource()I
    .registers 2

    .prologue
    .line 43
    const v0, 0x7f020031

    return v0
.end method

.method protected getItemLayout()I
    .registers 2

    .prologue
    .line 48
    const v0, 0x7f040015

    return v0
.end method

.method protected getWaitingForDirectorySearchLayout()I
    .registers 2

    .prologue
    .line 53
    const v0, 0x7f040016

    return v0
.end method
