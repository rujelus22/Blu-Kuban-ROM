.class LaQ/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/widget/LinearLayout;

.field e:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaQ/bk;->e:Ljava/util/List;

    return-void
.end method
