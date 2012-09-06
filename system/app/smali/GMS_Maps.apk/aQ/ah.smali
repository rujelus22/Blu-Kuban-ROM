.class LaQ/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/ak;

.field final synthetic b:LaQ/ag;


# direct methods
.method constructor <init>(LaQ/ag;LaQ/ak;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, LaQ/ah;->b:LaQ/ag;

    iput-object p2, p0, LaQ/ah;->a:LaQ/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x73

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    iget-object v3, p0, LaQ/ah;->b:LaQ/ag;

    iget-object v0, p0, LaQ/ah;->b:LaQ/ag;

    invoke-static {v0}, LaQ/ag;->a(LaQ/ag;)Z

    move-result v0

    if-nez v0, :cond_4d

    move v0, v1

    :goto_10
    invoke-static {v3, v0}, LaQ/ag;->a(LaQ/ag;Z)Z

    .line 142
    iget-object v0, p0, LaQ/ah;->b:LaQ/ag;

    invoke-static {v0}, LaQ/ag;->a(LaQ/ag;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 143
    const-string v0, "e"

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "t=l"

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, LaQ/ah;->b:LaQ/ag;

    invoke-static {v4}, LaQ/ag;->b(LaQ/ag;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_45
    iget-object v0, p0, LaQ/ah;->b:LaQ/ag;

    iget-object v1, p0, LaQ/ah;->a:LaQ/ak;

    invoke-static {v0, v1}, LaQ/ag;->a(LaQ/ag;LaQ/ak;)V

    .line 156
    return-void

    :cond_4d
    move v0, v2

    .line 141
    goto :goto_10

    .line 149
    :cond_4f
    const-string v0, "c"

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "t=l"

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, LaQ/ah;->b:LaQ/ag;

    invoke-static {v4}, LaQ/ag;->b(LaQ/ag;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method
