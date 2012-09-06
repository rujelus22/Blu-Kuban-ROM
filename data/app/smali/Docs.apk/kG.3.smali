.class public LkG;
.super LkQ;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LLF;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Date;

.field private a:Z

.field private final b:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private b:Z

.field private c:Ljava/util/Date;


# direct methods
.method public constructor <init>(LMb;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 51
    invoke-static {}, LLF;->a()LLF;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->c:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v1}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 37
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, LkG;->a:Ljava/util/Date;

    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, LkG;->b:Ljava/util/Date;

    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, LkG;->c:Ljava/util/Date;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, LkG;->a:Ljava/lang/String;

    .line 44
    iput v3, p0, LkG;->a:I

    .line 46
    iput-boolean v3, p0, LkG;->a:Z

    .line 47
    iput-boolean v3, p0, LkG;->b:Z

    .line 52
    iput-object p2, p0, LkG;->b:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static a(LMb;Landroid/database/Cursor;)LkG;
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 207
    new-instance v4, LkG;

    sget-object v0, LLG;->a:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p0, v0}, LkG;-><init>(LMb;Ljava/lang/String;)V

    .line 209
    invoke-static {}, LLF;->a()LLF;

    move-result-object v0

    invoke-virtual {v0}, LLF;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, LkG;->a(J)V

    .line 210
    sget-object v0, LLG;->b:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 211
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-nez v0, :cond_a6

    const/4 v0, 0x1

    .line 212
    :goto_3d
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v1}, LkG;->a(Ljava/util/Date;)V

    .line 213
    sget-object v1, LLG;->c:LLG;

    invoke-virtual {v1}, LLG;->a()LLV;

    move-result-object v1

    invoke-virtual {v1, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    .line 216
    if-nez v1, :cond_be

    if-eqz v0, :cond_be

    .line 217
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v1

    .line 219
    :goto_58
    if-nez v3, :cond_a8

    move-object v1, v2

    :goto_5b
    invoke-virtual {v4, v1}, LkG;->b(Ljava/util/Date;)V

    .line 221
    sget-object v1, LLG;->d:LLG;

    invoke-virtual {v1}, LLG;->a()LLV;

    move-result-object v1

    invoke-virtual {v1, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    .line 222
    if-nez v1, :cond_bc

    if-eqz v0, :cond_bc

    .line 223
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 225
    :goto_70
    if-nez v0, :cond_b2

    :goto_72
    invoke-virtual {v4, v2}, LkG;->c(Ljava/util/Date;)V

    .line 226
    sget-object v0, LLG;->e:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, LkG;->a(Ljava/lang/String;)V

    .line 227
    sget-object v0, LLG;->f:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v4, v0}, LkG;->a(I)V

    .line 230
    sget-object v0, LLG;->g:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v0}, LkG;->a(Z)V

    .line 232
    return-object v4

    .line 211
    :cond_a6
    const/4 v0, 0x0

    goto :goto_3d

    .line 219
    :cond_a8
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_5b

    .line 225
    :cond_b2
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_72

    :cond_bc
    move-object v0, v1

    goto :goto_70

    :cond_be
    move-object v3, v1

    goto :goto_58
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, LkG;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, LkG;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Date;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, LkG;->a:Ljava/util/Date;

    return-object v0
.end method

.method public a()V
    .registers 5

    .prologue
    .line 176
    iget-object v0, p0, LkG;->a:LMb;

    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->c:Landroid/net/Uri;

    invoke-virtual {p0}, LkG;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, LMb;->a(Landroid/net/Uri;J)V

    .line 177
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput p1, p0, LkG;->a:I

    .line 141
    return-void
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 184
    sget-object v0, LLG;->a:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, LLG;->b:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkG;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    invoke-virtual {p0}, LkG;->b()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 187
    sget-object v0, LLG;->c:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkG;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    :goto_49
    invoke-virtual {p0}, LkG;->c()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_b5

    .line 193
    sget-object v0, LLG;->d:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkG;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    :goto_68
    sget-object v0, LLG;->e:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkG;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, LLG;->f:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkG;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    sget-object v0, LLG;->g:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LkG;->a()Z

    move-result v0

    if-eqz v0, :cond_c3

    const/4 v0, 0x1

    :goto_9f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    return-void

    .line 190
    :cond_a7
    sget-object v0, LLG;->c:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_49

    .line 196
    :cond_b5
    sget-object v0, LLG;->d:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_68

    .line 200
    :cond_c3
    const/4 v0, 0x0

    goto :goto_9f
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, LkG;->a:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-object p1, p0, LkG;->a:Ljava/util/Date;

    .line 68
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-boolean p1, p0, LkG;->a:Z

    .line 155
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, LkG;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, LkG;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, LkG;->b:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic b()V
    .registers 1

    .prologue
    .line 23
    invoke-super {p0}, LkQ;->b()V

    return-void
.end method

.method public b(Ljava/util/Date;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, LkG;->b:Ljava/util/Date;

    .line 85
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, LkG;->b:Z

    .line 163
    return-void
.end method

.method public c()Ljava/util/Date;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, LkG;->c:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 23
    invoke-super {p0}, LkQ;->c()V

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, LkG;->c:Ljava/util/Date;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 237
    const-string v1, "Account[%s, sqlId=%d%s%s]"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, LkG;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, LkG;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-boolean v0, p0, LkG;->a:Z

    if-eqz v0, :cond_2c

    const-string v0, ", syncing"

    :goto_1c
    aput-object v0, v2, v3

    const/4 v3, 0x3

    iget-object v0, p0, LkG;->c:Ljava/util/Date;

    if-nez v0, :cond_2f

    const-string v0, ""

    :goto_25
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    const-string v0, ""

    goto :goto_1c

    :cond_2f
    const-string v0, ", clipped"

    goto :goto_25
.end method
