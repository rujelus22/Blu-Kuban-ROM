.class public LAF;
.super Ljava/lang/Object;
.source "TextPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, LAF;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, LAF;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->q()V

    .line 32
    const/4 v0, 0x1

    return v0
.end method
