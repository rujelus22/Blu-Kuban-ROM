.class public Lcom/google/googlenav/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput-object p1, p0, Lcom/google/googlenav/aw;->a:Ljava/lang/String;

    .line 1041
    iput-object p3, p0, Lcom/google/googlenav/aw;->d:Ljava/lang/String;

    .line 1042
    iput-object p2, p0, Lcom/google/googlenav/aw;->b:Ljava/lang/String;

    .line 1043
    iput-object p4, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    .line 1044
    invoke-direct {p0}, Lcom/google/googlenav/aw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aw;->e:Ljava/lang/String;

    .line 1045
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/google/googlenav/aw;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 1049
    :cond_8
    const-string v0, ""

    .line 1068
    :goto_a
    return-object v0

    .line 1053
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/aw;->a:Ljava/lang/String;

    const-string v1, "googleusercontent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/aw;->a:Ljava/lang/String;

    const-string v1, ".google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1054
    :cond_1f
    const/16 v0, 0x386

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1058
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1059
    if-eqz v0, :cond_41

    .line 1060
    const-string v1, "q"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_41

    .line 1062
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_41

    .line 1064
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1068
    :cond_41
    const-string v0, ""

    goto :goto_a
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/aw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
