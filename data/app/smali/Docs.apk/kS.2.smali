.class public LkS;
.super LkQ;
.source "DocumentContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LMf;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private a:Ljava/util/Date;

.field private final a:Ljavax/crypto/SecretKey;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LMb;Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {}, LMf;->a()LMf;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->d:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v1}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 36
    iput-object p2, p0, LkS;->a:Ljava/lang/String;

    .line 37
    iput-object p3, p0, LkS;->b:Ljava/lang/String;

    .line 38
    iput-object p4, p0, LkS;->a:Ljavax/crypto/SecretKey;

    .line 39
    return-void
.end method

.method public static a(LMb;Landroid/database/Cursor;)LkS;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 117
    sget-object v0, LMg;->e:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 118
    sget-object v0, LMg;->b:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 119
    sget-object v0, LMg;->d:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 121
    sget-object v0, LMg;->c:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 124
    const/4 v0, 0x0

    .line 125
    if-eqz v3, :cond_3a

    if-eqz v4, :cond_3a

    .line 126
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 129
    :cond_3a
    new-instance v3, LkS;

    invoke-direct {v3, p0, v2, v1, v0}, LkS;-><init>(LMb;Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 130
    sget-object v0, LMg;->a:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v3, v0}, LkS;->a(Ljava/lang/String;)V

    .line 132
    invoke-static {}, LMf;->a()LMf;

    move-result-object v0

    invoke-virtual {v0}, LMf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, LkS;->a(J)V

    .line 134
    sget-object v0, LMg;->f:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_77

    .line 136
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v1}, LkS;->a(Ljava/util/Date;)V

    .line 139
    :cond_77
    return-object v3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, LkS;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Date;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, LkS;->a:Ljava/util/Date;

    return-object v0
.end method

.method public a()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, LkS;->a:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    sget-object v0, LMg;->a:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, LMg;->b:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkS;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, LMg;->e:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkS;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, LMg;->f:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, LkS;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, LkS;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_50
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    iget-object v0, p0, LkS;->a:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_80

    .line 103
    sget-object v0, LMg;->c:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LkS;->a:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 105
    sget-object v0, LMg;->d:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LkS;->a:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_7d
    return-void

    :cond_7e
    move-object v0, v1

    .line 99
    goto :goto_50

    .line 108
    :cond_80
    sget-object v0, LMg;->c:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, [B

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 109
    sget-object v0, LMg;->d:LMg;

    invoke-virtual {v0}, LMg;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, LkS;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, LkS;->a:Ljava/util/Date;

    .line 68
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, LkS;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b()V
    .registers 1

    .prologue
    .line 25
    invoke-super {p0}, LkQ;->b()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, LkS;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 25
    invoke-super {p0}, LkQ;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 144
    const-string v0, ""

    .line 145
    iget-object v1, p0, LkS;->a:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_25

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", encrypted["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LkS;->a:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_25
    const-string v1, "DocumentContent[type=%s, path=%s%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, LkS;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, LkS;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
