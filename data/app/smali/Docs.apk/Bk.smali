.class public LBk;
.super LBo;
.source "TableStyle.java"


# instance fields
.field private final a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .registers 5
    .parameter

    .prologue
    .line 23
    sget v0, Luo;->uneditable_table:I

    sget v1, Lus;->uneditable_table:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, LBo;-><init>(IIZ)V

    .line 24
    iput-object p1, p0, LBk;->a:Landroid/view/View$OnClickListener;

    .line 25
    return-void
.end method

.method static synthetic a(LBk;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, LBk;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a()LyD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LyD",
            "<",
            "LBo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, LBl;

    invoke-direct {v0, p0}, LBl;-><init>(LBk;)V

    return-object v0
.end method
