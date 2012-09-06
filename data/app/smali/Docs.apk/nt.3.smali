.class Lnt;
.super Ljava/lang/Object;
.source "EntryViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lnt;->a:Lnr;

    iput-object p2, p0, Lnt;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lnt;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lnx;

    move-result-object v0

    iget-object v1, p0, Lnt;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnx;->a(Ljava/lang/String;)V

    .line 332
    return-void
.end method
