.class Lns;
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
    .line 251
    iput-object p1, p0, Lns;->a:Lnr;

    iput-object p2, p0, Lns;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 254
    const-string v0, "EntryViewBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicked on star icon for res-id #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lns;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lns;->a:Lnr;

    iget-object v0, v0, Lnr;->a:Lny;

    iget-object v1, p0, Lns;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lny;->b(Ljava/lang/String;)V

    .line 256
    return-void
.end method
