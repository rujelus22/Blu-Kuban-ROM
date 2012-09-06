.class LaR/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:LaR/a;


# direct methods
.method constructor <init>(LaR/a;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, LaR/d;->c:LaR/a;

    iput-object p2, p0, LaR/d;->a:Ljava/lang/String;

    iput p3, p0, LaR/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, LaR/d;->c:LaR/a;

    invoke-static {v0}, LaR/a;->c(LaR/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, LaR/d;->a:Ljava/lang/String;

    iget v2, p0, LaR/d;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->b(Ljava/lang/String;I)V

    .line 169
    return-void
.end method
