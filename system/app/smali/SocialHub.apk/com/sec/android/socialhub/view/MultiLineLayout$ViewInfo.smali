.class public Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
.super Ljava/lang/Object;
.source "MultiLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/MultiLineLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewInfo"
.end annotation


# instance fields
.field public bChecked:Z

.field height:I

.field final synthetic this$0:Lcom/sec/android/socialhub/view/MultiLineLayout;

.field public view:Landroid/view/View;

.field width:I


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/view/MultiLineLayout;Landroid/view/View;IIZ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "bChecked"

    .prologue
    const/4 v1, 0x0

    .line 219
    iput-object p1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->this$0:Lcom/sec/android/socialhub/view/MultiLineLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    .line 214
    iput-boolean v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->bChecked:Z

    .line 215
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->width:I

    .line 216
    iput v1, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->height:I

    .line 220
    iput-object p2, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    .line 221
    iput p3, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->width:I

    .line 222
    iput p4, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->height:I

    .line 223
    iput-boolean p5, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->bChecked:Z

    .line 224
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 229
    iget-object v0, p0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 231
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
