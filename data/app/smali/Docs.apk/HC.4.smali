.class LHC;
.super Ljava/lang/Object;
.source "NavigationCollectionGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:LHA;

.field final synthetic a:LHB;


# direct methods
.method constructor <init>(LHB;ILHA;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, LHC;->a:LHB;

    iput p2, p0, LHC;->a:I

    iput-object p3, p0, LHC;->a:LHA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, LHC;->a:LHB;

    invoke-static {v0}, LHB;->a(LHB;)LHD;

    move-result-object v0

    iget v1, p0, LHC;->a:I

    iget-object v2, p0, LHC;->a:LHA;

    invoke-interface {v0, v1, v2}, LHD;->a(ILHA;)V

    .line 197
    return-void
.end method
