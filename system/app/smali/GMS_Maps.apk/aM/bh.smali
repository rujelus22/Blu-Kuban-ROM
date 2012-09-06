.class LaM/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LaM/bd;


# direct methods
.method private constructor <init>(LaM/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, LaM/bh;->a:LaM/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaM/bd;LaM/be;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, LaM/bh;-><init>(LaM/bd;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, LaM/bh;->a:LaM/bd;

    iget-object v0, v0, LaM/bd;->a:LaM/i;

    const/16 v1, 0x4b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, LaM/i;->a(IILjava/lang/Object;)Z

    .line 233
    return-void
.end method
