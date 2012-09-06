.class LaQ/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field a:Landroid/view/View;

.field b:LaQ/bw;

.field c:Landroid/widget/LinearLayout;

.field d:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaQ/C;->d:Ljava/util/List;

    return-void
.end method
