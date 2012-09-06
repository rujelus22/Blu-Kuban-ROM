.class Lcom/google/googlenav/mylocationnotifier/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/mylocationnotifier/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/l;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    iput p2, p0, Lcom/google/googlenav/mylocationnotifier/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 162
    if-eqz p2, :cond_59

    .line 163
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/l;->b(Lcom/google/googlenav/mylocationnotifier/l;)[Lcom/google/googlenav/ai;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/mylocationnotifier/o;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/l;->b(Lcom/google/googlenav/mylocationnotifier/l;)[Lcom/google/googlenav/ai;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/mylocationnotifier/o;->a:I

    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v3

    aput-object v3, v1, v2

    .line 167
    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/l;->b(Lcom/google/googlenav/mylocationnotifier/l;)[Lcom/google/googlenav/ai;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/mylocationnotifier/o;->a:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 169
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/l;->b(Lcom/google/googlenav/mylocationnotifier/l;)[Lcom/google/googlenav/ai;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/mylocationnotifier/o;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ai;->o(Ljava/lang/String;)V

    .line 173
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/l;->d(Lcom/google/googlenav/mylocationnotifier/l;)Lcom/google/googlenav/mylocationnotifier/d;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/l;->d(Lcom/google/googlenav/mylocationnotifier/l;)Lcom/google/googlenav/mylocationnotifier/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/l;->b(Lcom/google/googlenav/mylocationnotifier/l;)[Lcom/google/googlenav/ai;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/mylocationnotifier/o;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/ai;)V

    .line 179
    :cond_58
    :goto_58
    return-void

    .line 177
    :cond_59
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/o;->b:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/l;->c:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x3f3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_58
.end method
