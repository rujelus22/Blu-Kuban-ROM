.class LaQ/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:LaS/h;

.field final synthetic b:LaQ/ao;


# direct methods
.method constructor <init>(LaQ/ao;LaS/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, LaQ/at;->b:LaQ/ao;

    iput-object p2, p0, LaQ/at;->a:LaS/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 412
    const-string v0, "dontcall"

    iget-object v1, p0, LaQ/at;->a:LaS/h;

    iget-object v2, p0, LaQ/at;->b:LaQ/ao;

    invoke-static {v2}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaS/a;->a(Ljava/lang/String;LaS/h;Lcom/google/googlenav/ai;)V

    .line 414
    return-void
.end method
