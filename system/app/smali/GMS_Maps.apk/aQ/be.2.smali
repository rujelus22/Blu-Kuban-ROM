.class LaQ/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/googlenav/ui/g;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/g;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, LaQ/be;->a:Lcom/google/googlenav/ui/g;

    .line 291
    iput p2, p0, LaQ/be;->b:I

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/g;ILaQ/bd;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, LaQ/be;-><init>(Lcom/google/googlenav/ui/g;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, LaQ/be;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x76d

    iget v2, p0, LaQ/be;->b:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 300
    return-void
.end method
