.class public LaC/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/ui/wizard/gi;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, LaC/A;->c:Lcom/google/googlenav/ui/wizard/gi;

    .line 41
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, LaC/A;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 115
    iget-object v1, p0, LaC/A;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    .line 117
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v1

    invoke-virtual {v1}, Lax/l;->g()Lax/m;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Lax/m;->g()Lax/r;

    move-result-object v1

    invoke-virtual {v0}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 122
    iget-object v1, p0, LaC/A;->c:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/gi;->a(Lcom/google/googlenav/ai;)V

    .line 123
    return-void
.end method
