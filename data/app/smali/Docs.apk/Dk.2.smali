.class public LDk;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 7172
    iput-object p1, p0, LDk;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 7172
    invoke-direct {p0, p1}, LDk;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 7175
    iget-object v0, p0, LDk;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)Z

    move-result v0

    return v0
.end method
