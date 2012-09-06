.class public Lcom/google/googlenav/ui/view/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/EnumSet;

.field public final b:I

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:Lcom/google/googlenav/ui/view/w;

.field public f:I

.field g:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-class v0, Lcom/google/googlenav/ui/view/r;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    .line 167
    iput v1, p0, Lcom/google/googlenav/ui/view/p;->f:I

    .line 170
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/p;->g:Z

    .line 173
    iput p1, p0, Lcom/google/googlenav/ui/view/p;->b:I

    .line 174
    iput p2, p0, Lcom/google/googlenav/ui/view/p;->c:I

    .line 175
    iput-object p3, p0, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    .line 176
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/r;)V
    .registers 4
    .parameter

    .prologue
    .line 215
    sget-object v0, Lcom/google/googlenav/ui/view/q;->a:[I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 232
    :goto_b
    return-void

    .line 217
    :pswitch_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->a:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 220
    :pswitch_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->b:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 223
    :pswitch_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->d:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 226
    :pswitch_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->c:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 229
    :pswitch_2c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->e:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 215
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/p;->g:Z

    return v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->b:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->a:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/googlenav/ui/view/p;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 206
    return-void
.end method
