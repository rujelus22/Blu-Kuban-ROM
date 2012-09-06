.class public LkR;
.super LkT;
.source "Document.java"


# instance fields
.field private a:J

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:J

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private c:Z

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>(LMb;LkG;Landroid/database/Cursor;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, LkT;-><init>(LMb;LkG;Landroid/database/Cursor;)V

    .line 30
    iput-wide v1, p0, LkR;->a:J

    .line 33
    iput-wide v1, p0, LkR;->b:J

    .line 34
    iput-wide v1, p0, LkR;->c:J

    .line 35
    iput-wide v1, p0, LkR;->d:J

    .line 37
    iput-boolean v0, p0, LkR;->b:Z

    .line 38
    iput-boolean v0, p0, LkR;->c:Z

    .line 39
    const-wide/16 v1, 0x0

    iput-wide v1, p0, LkR;->e:J

    .line 52
    sget-object v1, LMi;->b:LMi;

    invoke-virtual {v1}, LMi;->a()LLV;

    move-result-object v1

    invoke-virtual {v1, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 53
    invoke-virtual {p0}, LkR;->c()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    invoke-static {v0}, LafQ;->b(Z)V

    .line 54
    sget-object v0, LMi;->f:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_43

    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LkR;->c(J)V

    .line 59
    :cond_43
    sget-object v0, LMi;->a:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LkR;->a(Z)V

    .line 61
    sget-object v0, LMi;->c:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_69

    .line 63
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, LQM;->a:LQM;

    invoke-virtual {p0, v0, v1, v2}, LkR;->a(JLQM;)V

    .line 66
    :cond_69
    sget-object v0, LMi;->d:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_7e

    .line 68
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, LQM;->b:LQM;

    invoke-virtual {p0, v0, v1, v2}, LkR;->a(JLQM;)V

    .line 71
    :cond_7e
    invoke-static {}, LMh;->a()LMh;

    move-result-object v0

    invoke-virtual {v0}, LMh;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LkR;->b(J)V

    .line 73
    sget-object v0, LMi;->e:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LkR;->a(Ljava/lang/String;)V

    .line 75
    sget-object v0, LMi;->g:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LkR;->d(J)V

    .line 76
    sget-object v0, LMi;->h:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LkR;->b(Ljava/lang/String;)V

    .line 77
    sget-object v0, LMi;->i:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, LQM;->a:LQM;

    invoke-virtual {p0, v0, v1}, LkR;->a(ZLQM;)V

    .line 79
    sget-object v0, LMi;->j:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p3}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, LQM;->b:LQM;

    invoke-virtual {p0, v0, v1}, LkR;->a(ZLQM;)V

    .line 81
    return-void
.end method

.method public constructor <init>(LMb;LkG;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, LkT;-><init>(LMb;LkG;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-wide v0, p0, LkR;->a:J

    .line 33
    iput-wide v0, p0, LkR;->b:J

    .line 34
    iput-wide v0, p0, LkR;->c:J

    .line 35
    iput-wide v0, p0, LkR;->d:J

    .line 37
    iput-boolean v2, p0, LkR;->b:Z

    .line 38
    iput-boolean v2, p0, LkR;->c:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LkR;->e:J

    .line 47
    return-void
.end method

.method private a(J)Landroid/content/ContentValues;
    .registers 10
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 212
    sget-object v0, LMi;->a:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, LkR;->a()Z

    move-result v0

    if-eqz v0, :cond_db

    move v0, v1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    sget-object v0, LMi;->b:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    sget-object v0, LMi;->e:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkR;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, LMi;->h:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkR;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, LMi;->i:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v0, LQM;->a:LQM;

    invoke-virtual {p0, v0}, LkR;->a(LQM;)Z

    move-result v0

    if-eqz v0, :cond_de

    move v0, v1

    :goto_67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    sget-object v0, LMi;->j:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v4, LQM;->b:LQM;

    invoke-virtual {p0, v4}, LkR;->a(LQM;)Z

    move-result v4

    if-eqz v4, :cond_e0

    :goto_80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    sget-object v0, LQM;->a:LQM;

    invoke-virtual {p0, v0}, LkR;->a(LQM;)J

    move-result-wide v0

    .line 223
    cmp-long v2, v0, v5

    if-ltz v2, :cond_e2

    .line 224
    sget-object v2, LMi;->c:LMi;

    invoke-virtual {v2}, LMi;->a()LLV;

    move-result-object v2

    invoke-virtual {v2}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    :goto_a2
    sget-object v0, LQM;->b:LQM;

    invoke-virtual {p0, v0}, LkR;->a(LQM;)J

    move-result-wide v0

    .line 230
    cmp-long v2, v0, v5

    if-ltz v2, :cond_f0

    .line 231
    sget-object v2, LMi;->d:LMi;

    invoke-virtual {v2}, LMi;->a()LLV;

    move-result-object v2

    invoke-virtual {v2}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    :goto_bd
    invoke-virtual {p0}, LkR;->b()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_fe

    .line 237
    sget-object v0, LMi;->f:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkR;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    :goto_da
    return-object v3

    :cond_db
    move v0, v2

    .line 212
    goto/16 :goto_1a

    :cond_de
    move v0, v2

    .line 216
    goto :goto_67

    :cond_e0
    move v1, v2

    .line 218
    goto :goto_80

    .line 226
    :cond_e2
    sget-object v0, LMi;->c:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_a2

    .line 233
    :cond_f0
    sget-object v0, LMi;->d:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_bd

    .line 239
    :cond_fe
    sget-object v0, LMi;->f:LMi;

    invoke-virtual {v0}, LMi;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_da
.end method

.method public static a(LMb;LkG;Landroid/database/Cursor;)LkR;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    new-instance v0, LkR;

    invoke-direct {v0, p0, p1, p2}, LkR;-><init>(LMb;LkG;Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 87
    iget-wide v0, p0, LkR;->a:J

    return-wide v0
.end method

.method public a(LQM;)J
    .registers 4
    .parameter

    .prologue
    .line 150
    sget-object v0, LQM;->a:LQM;

    if-ne p1, v0, :cond_7

    .line 151
    iget-wide v0, p0, LkR;->b:J

    .line 153
    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, LkR;->c:J

    goto :goto_6
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, LkR;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(JLQM;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 161
    sget-object v0, LQM;->a:LQM;

    if-ne p3, v0, :cond_11

    .line 162
    iput-wide p1, p0, LkR;->b:J

    .line 166
    :goto_6
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, LkR;->a(ZLQM;)V

    .line 169
    :cond_10
    return-void

    .line 164
    :cond_11
    iput-wide p1, p0, LkR;->c:J

    goto :goto_6
.end method

.method protected a(LMb;)V
    .registers 6
    .parameter

    .prologue
    .line 276
    invoke-virtual {p0}, LkR;->a()J

    move-result-wide v0

    invoke-static {}, LMh;->a()LMh;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, LMb;->a(JLMa;Landroid/net/Uri;)V

    .line 277
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, LkR;->b(J)V

    .line 278
    return-void
.end method

.method protected a(LMb;J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-virtual {p0}, LkR;->a()J

    move-result-wide v1

    invoke-static {}, LMh;->a()LMh;

    move-result-object v3

    invoke-direct {p0, p2, p3}, LkR;->a(J)Landroid/content/ContentValues;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/docs/providers/DocListProvider;->b:Landroid/net/Uri;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LMb;->a(JLMa;Landroid/content/ContentValues;Landroid/net/Uri;)J

    move-result-wide v0

    .line 268
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_21

    .line 269
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Error saving document"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_21
    invoke-virtual {p0, v0, v1}, LkR;->b(J)V

    .line 272
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, LkR;->a:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-boolean p1, p0, LkR;->a:Z

    .line 113
    return-void
.end method

.method public a(ZLQM;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 200
    sget-object v0, LQM;->a:LQM;

    if-ne p2, v0, :cond_7

    .line 201
    iput-boolean p1, p0, LkR;->b:Z

    .line 205
    :goto_6
    return-void

    .line 203
    :cond_7
    iput-boolean p1, p0, LkR;->c:Z

    goto :goto_6
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, LkR;->a:Z

    return v0
.end method

.method public a(LLz;)Z
    .registers 4
    .parameter

    .prologue
    .line 282
    invoke-virtual {p0}, LkR;->a()LkU;

    move-result-object v0

    sget-object v1, LkU;->a:LkU;

    if-eq v0, v1, :cond_a

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, LkR;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, LLz;->a(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_9
.end method

.method public a(LQM;)Z
    .registers 3
    .parameter

    .prologue
    .line 189
    sget-object v0, LQM;->a:LQM;

    if-ne p1, v0, :cond_7

    .line 190
    iget-boolean v0, p0, LkR;->b:Z

    .line 192
    :goto_6
    return v0

    :cond_7
    iget-boolean v0, p0, LkR;->c:Z

    goto :goto_6
.end method

.method public b()J
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, LkR;->d:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, LkR;->b:Ljava/lang/String;

    return-object v0
.end method

.method b(J)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    cmp-long v0, p1, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, LkR;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, LkR;->a:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_19

    :cond_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, LafQ;->b(Z)V

    .line 98
    iput-wide p1, p0, LkR;->a:J

    .line 99
    return-void

    .line 96
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, LkR;->b:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0}, LkR;->g()Z

    move-result v0

    if-ne p1, v0, :cond_7

    .line 260
    :goto_6
    return-void

    .line 258
    :cond_7
    const-wide/16 v0, -0x1

    sget-object v2, LQM;->a:LQM;

    invoke-virtual {p0, v0, v1, v2}, LkR;->a(JLQM;)V

    .line 259
    invoke-super {p0, p1}, LkT;->b(Z)V

    goto :goto_6
.end method

.method public c(J)V
    .registers 3
    .parameter

    .prologue
    .line 120
    iput-wide p1, p0, LkR;->d:J

    .line 121
    return-void
.end method

.method public d()J
    .registers 3

    .prologue
    .line 143
    iget-wide v0, p0, LkR;->e:J

    return-wide v0
.end method

.method public d(J)V
    .registers 3
    .parameter

    .prologue
    .line 139
    iput-wide p1, p0, LkR;->e:J

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 290
    const-string v0, "Document(super=%s, documentSqlId=%d, doSync=%s, htmlUri=%s, documentContentId=%d, appCacheId=%d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, LkT;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, LkR;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, LkR;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, LkR;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, LkR;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, LkR;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
