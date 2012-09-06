.class public LLV;
.super Ljava/lang/Object;
.source "DatabaseField.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final a:LMl;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LMl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, LLV;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, LLV;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LMl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, LLV;->a:Ljava/util/Map;

    .line 339
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMl;

    iput-object v0, p0, LLV;->a:LMl;

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;LLW;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, LLV;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private a(I)LMl;
    .registers 4
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, LLV;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMl;

    return-object v0
.end method

.method private static a(Ljava/lang/Long;)Ljava/lang/Boolean;
    .registers 5
    .parameter

    .prologue
    .line 64
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 78
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_b
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 112
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 39
    if-nez p0, :cond_5

    .line 40
    const-string v0, "NULL"

    .line 44
    :goto_4
    return-object v0

    .line 41
    :cond_5
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 44
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    const/16 v1, 0x22

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)J
    .registers 4
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    .line 146
    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_8
.end method

.method public a()LMp;
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, LLV;->a:LMl;

    const-string v1, "Field not present in current version"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, LLV;->a:LMl;

    iget-object v0, v0, LMl;->a:LMp;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .registers 3
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    .line 161
    invoke-static {v0}, LLV;->a(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/lang/Long;
    .registers 5
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, LLV;->a()Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 129
    invoke-virtual {p0}, LLV;->a()LMp;

    move-result-object v0

    sget-object v1, LMp;->a:LMp;

    invoke-virtual {v0, v1}, LMp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LMp;->a:LMp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2e
    invoke-virtual {p0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 368
    iget-object v0, p0, LLV;->a:LMl;

    const-string v1, "Field not present in current version"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, LLV;->a:LMl;

    iget-object v0, v0, LMl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, LLV;->a()Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 94
    invoke-virtual {p0}, LLV;->a()LMp;

    move-result-object v0

    sget-object v1, LMp;->c:LMp;

    invoke-virtual {v0, v1}, LMp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LMp;->c:LMp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2e
    invoke-virtual {p0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/StringBuilder;
    .registers 5
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, LLV;->a(I)LMl;

    move-result-object v0

    .line 172
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    iget-object v2, v0, LMl;->a:Ljava/lang/String;

    invoke-static {v2}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v2, v0, LMl;->a:LMp;

    invoke-virtual {v2}, LMp;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-boolean v2, v0, LMl;->b:Z

    if-eqz v2, :cond_2c

    .line 179
    const-string v2, " NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_2c
    iget-object v2, v0, LMl;->a:Ljava/lang/Object;

    if-eqz v2, :cond_3f

    .line 182
    const-string v2, " DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, LMl;->a:Ljava/lang/Object;

    invoke-static {v0}, LLV;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_3f
    return-object v1
.end method

.method public a(ILjava/lang/String;Z)Ljava/lang/StringBuilder;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    if-nez p3, :cond_4

    if-eqz p2, :cond_2e

    :cond_4
    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 231
    add-int/lit8 v0, p1, -0x1

    .line 232
    invoke-direct {p0, p1}, LLV;->a(I)LMl;

    move-result-object v1

    .line 233
    invoke-static {v1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-direct {p0, v0}, LLV;->a(I)LMl;

    move-result-object v0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    if-nez v0, :cond_49

    .line 239
    iget-boolean v0, v1, LMl;->b:Z

    if-eqz v0, :cond_30

    iget-object v0, v1, LMl;->a:Ljava/lang/Object;

    if-nez v0, :cond_30

    if-nez p3, :cond_30

    .line 241
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Cannot add not null field without default to existing table"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2e
    const/4 v0, 0x0

    goto :goto_5

    .line 243
    :cond_30
    iget-object v0, v1, LMl;->a:Ljava/lang/Object;

    invoke-static {v0}, LLV;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :goto_39
    const-string v0, " AS "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, LMl;->a:Ljava/lang/String;

    invoke-static {v1}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    return-object v2

    .line 246
    :cond_49
    sget-boolean v3, LLV;->a:Z

    if-nez v3, :cond_55

    if-eqz p3, :cond_55

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 247
    :cond_55
    invoke-static {p2}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    iget-object v0, v0, LMl;->a:Ljava/lang/String;

    invoke-static {v0}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39
.end method

.method public a(I)Ljava/util/Set;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0, p1}, LLV;->a(I)LMl;

    move-result-object v0

    .line 404
    const-string v1, "Field not present in specified version"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, v0, LMl;->a:Ljava/util/Set;

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, LLV;->a:LMl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 361
    invoke-direct {p0, p1}, LLV;->a(I)LMl;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b(I)Ljava/lang/StringBuilder;
    .registers 6
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, LLV;->a(I)LMl;

    move-result-object v1

    .line 195
    invoke-static {v1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    iget-object v2, v1, LMl;->a:LMa;

    .line 199
    if-nez v2, :cond_12

    .line 200
    const/4 v0, 0x0

    .line 214
    :goto_11
    return-object v0

    .line 202
    :cond_12
    const-string v3, "FOREIGN KEY("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v3, v1, LMl;->a:Ljava/lang/String;

    invoke-static {v3}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v3, ") REFERENCES "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v2, p1}, LMa;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v3, v1, LMl;->a:LLV;

    if-eqz v3, :cond_55

    .line 208
    iget-object v2, v1, LMl;->a:LLV;

    invoke-virtual {v2}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_46
    const-string v2, ") ON DELETE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, v1, LMl;->a:LMo;

    invoke-virtual {v1}, LMo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 210
    :cond_55
    invoke-virtual {v2}, LMa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46
.end method

.method public b(I)Z
    .registers 4
    .parameter

    .prologue
    .line 394
    invoke-direct {p0, p1}, LLV;->a(I)LMl;

    move-result-object v0

    .line 395
    const-string v1, "Field not present in specified version"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, v0, LMl;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public c(I)Z
    .registers 4
    .parameter

    .prologue
    .line 437
    invoke-direct {p0, p1}, LLV;->a(I)LMl;

    move-result-object v0

    .line 438
    const-string v1, "Field not present in specified version"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-boolean v0, v0, LMl;->a:Z

    return v0
.end method
