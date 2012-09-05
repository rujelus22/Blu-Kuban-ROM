.class final Lad$1;
.super Landroid/database/ContentObserver;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = null
.end annotation


# instance fields
.field final synthetic a:Lad;


# direct methods
.method constructor <init>(Lad;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lad$1;->a:Lad;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 140
    iget-object v0, p0, Lad$1;->a:Lad;

    invoke-virtual {v0}, Lad;->c()V

    .line 142
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v2, v7

    const/4 v0, 0x1

    const-string v1, "body"

    aput-object v1, v2, v0

    const-string v0, "address"

    aput-object v0, v2, v8

    .line 143
    iget-object v0, p0, Lad$1;->a:Lad;

    invoke-static {v0}, Lad;->b(Lad;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lad;->b:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lad$1;->a:Lad;

    invoke-static {v5}, Lad;->a(Lad;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 150
    :cond_48
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 151
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    iget-object v4, p0, Lad$1;->a:Lad;

    invoke-static {v4}, Lad;->a(Lad;)J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_5f

    .line 153
    iget-object v4, p0, Lad$1;->a:Lad;

    invoke-virtual {v4, v1, v2}, Lad;->e(J)V

    .line 155
    :cond_5f
    iget-object v4, p0, Lad$1;->a:Lad;

    invoke-static {v4}, Lad;->b(Lad;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v4

    sget-object v5, Ldg;->e:Ldg;

    invoke-interface {v4, v5}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 157
    invoke-static {v1, v2, v3, v7}, Lam;->a(JLjava/lang/String;Z)Lcg;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lad$1;->a:Lad;

    invoke-static {v2}, Lad;->b(Lad;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v7}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 165
    :cond_82
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_48

    .line 167
    :cond_88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 168
    return-void
.end method
