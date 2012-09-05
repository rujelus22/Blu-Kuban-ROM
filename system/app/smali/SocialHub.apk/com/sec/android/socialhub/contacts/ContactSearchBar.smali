.class public Lcom/sec/android/socialhub/contacts/ContactSearchBar;
.super Lcom/sec/android/socialhub/view/SocialHubSearchBar;
.source "ContactSearchBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getEditTextID()I
    .registers 2

    .prologue
    .line 30
    const v0, 0x7f0b0024

    return v0
.end method

.method public getLayoutID()I
    .registers 2

    .prologue
    .line 24
    const v0, 0x7f030006

    return v0
.end method
