.class Lcom/google/googlenav/ui/view/dialog/z;
.super Lcom/google/googlenav/ui/view/android/L;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/s;Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/z;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method
