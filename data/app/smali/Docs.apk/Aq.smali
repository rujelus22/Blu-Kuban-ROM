.class public LAq;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Lcom/google/android/apps/docs/editors/kix/KixEditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, LAq;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iput-object p2, p0, LAq;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    .line 241
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p2

    .line 242
    iget-object v1, p0, LAq;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v1

    .line 243
    iget-object v2, p0, LAq;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v2

    .line 244
    if-lt v0, v1, :cond_1a

    if-gt p2, v2, :cond_1a

    .line 246
    iget-object v0, p0, LAq;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->q()V

    .line 248
    :cond_1a
    return-void
.end method
