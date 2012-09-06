.class public Lcom/google/googlenav/friend/reporting/g;
.super Lcom/google/googlenav/friend/reporting/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/googlenav/friend/reporting/f;

.field private c:Lcom/google/googlenav/friend/reporting/s;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE latitudeLocations (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' BLOB,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "latLngEncrypted"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "source"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "time"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' REAL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "speed"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' REAL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "heading"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' REAL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "altitude"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' REAL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "accuracy"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "gmmNlpVersion"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "batteryLevel"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "batteryCharging"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "stationary"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "levelId"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "levelNumberE3"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/friend/reporting/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;Lcom/google/googlenav/friend/reporting/s;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const-string v2, "latitudeLocations"

    const-string v3, "time"

    const/16 v4, 0x3e8

    const-wide/32 v5, 0x5265c00

    sget-object v7, Lcom/google/googlenav/friend/reporting/g;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/friend/reporting/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    .line 90
    iput-object p3, p0, Lcom/google/googlenav/friend/reporting/g;->c:Lcom/google/googlenav/friend/reporting/s;

    .line 91
    iput-object p2, p0, Lcom/google/googlenav/friend/reporting/g;->b:Lcom/google/googlenav/friend/reporting/f;

    .line 92
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/reporting/k;)Landroid/content/ContentValues;
    .registers 7
    .parameter

    .prologue
    .line 167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    :try_start_5
    const-string v1, "latLngEncrypted"

    iget-object v2, p0, Lcom/google/googlenav/friend/reporting/g;->b:Lcom/google/googlenav/friend/reporting/f;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->c()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/friend/reporting/f;->a(II)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_18} :catch_ed

    .line 174
    const-string v1, "source"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v1, "time"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->f()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 178
    const-string v1, "speed"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->g()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 181
    :cond_45
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->h()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 182
    const-string v1, "heading"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->i()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 185
    :cond_58
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->j()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 186
    const-string v1, "altitude"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->k()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 189
    :cond_6b
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->l()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 190
    const-string v1, "accuracy"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->m()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 193
    :cond_7e
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->n()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 194
    const-string v1, "gmmNlpVersion"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    :cond_91
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->p()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 198
    const-string v1, "batteryLevel"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    :cond_a4
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->r()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 202
    const-string v1, "batteryCharging"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->s()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 205
    :cond_b7
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->t()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 206
    const-string v1, "stationary"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->u()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 209
    :cond_ca
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->v()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 210
    const-string v1, "levelId"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_d9
    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->x()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 214
    const-string v1, "levelNumberE3"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/reporting/k;->y()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    :cond_ec
    return-object v0

    .line 171
    :catch_ed
    move-exception v0

    .line 172
    new-instance v1, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/reporting/b;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 3
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/google/googlenav/friend/reporting/k;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/g;->a(Lcom/google/googlenav/friend/reporting/k;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/g;->b(Landroid/database/Cursor;)Lcom/google/googlenav/friend/reporting/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/g;->c:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/s;->b()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/database/Cursor;)Lcom/google/googlenav/friend/reporting/k;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    const-string v0, "latLngEncrypted"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 100
    :try_start_c
    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/g;->b:Lcom/google/googlenav/friend/reporting/f;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/f;->a([B)Landroid/util/Pair;
    :try_end_11
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_11} :catch_10f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_116

    move-result-object v3

    .line 106
    new-instance v4, Lcom/google/googlenav/friend/reporting/m;

    invoke-direct {v4}, Lcom/google/googlenav/friend/reporting/m;-><init>()V

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lcom/google/googlenav/friend/reporting/m;->a(II)Lcom/google/googlenav/friend/reporting/m;

    move-result-object v0

    const-string v3, "source"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/friend/reporting/m;->a(I)Lcom/google/googlenav/friend/reporting/m;

    move-result-object v0

    const-string v3, "time"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/friend/reporting/m;->a(J)Lcom/google/googlenav/friend/reporting/m;

    move-result-object v3

    .line 111
    const-string v0, "speed"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->a(F)Lcom/google/googlenav/friend/reporting/m;

    .line 116
    :cond_5a
    const-string v0, "heading"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->b(F)Lcom/google/googlenav/friend/reporting/m;

    .line 121
    :cond_6d
    const-string v0, "altitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 122
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_80

    .line 123
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/friend/reporting/m;->a(D)Lcom/google/googlenav/friend/reporting/m;

    .line 126
    :cond_80
    const-string v0, "accuracy"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_93

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->c(F)Lcom/google/googlenav/friend/reporting/m;

    .line 131
    :cond_93
    const-string v0, "gmmNlpVersion"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 132
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->b(I)Lcom/google/googlenav/friend/reporting/m;

    .line 136
    :cond_a6
    const-string v0, "batteryLevel"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 137
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_b9

    .line 138
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->c(I)Lcom/google/googlenav/friend/reporting/m;

    .line 141
    :cond_b9
    const-string v0, "batteryCharging"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_cf

    .line 143
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11d

    move v0, v1

    :goto_cc
    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->a(Z)Lcom/google/googlenav/friend/reporting/m;

    .line 146
    :cond_cf
    const-string v0, "stationary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_e4

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11f

    :goto_e1
    invoke-virtual {v3, v1}, Lcom/google/googlenav/friend/reporting/m;->b(Z)Lcom/google/googlenav/friend/reporting/m;

    .line 151
    :cond_e4
    const-string v0, "levelId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_f7

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/friend/reporting/m;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/reporting/m;

    .line 156
    :cond_f7
    const-string v1, "levelNumberE3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 158
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/reporting/m;->d(I)Lcom/google/googlenav/friend/reporting/m;

    .line 161
    :cond_10a
    invoke-virtual {v3}, Lcom/google/googlenav/friend/reporting/m;->a()Lcom/google/googlenav/friend/reporting/k;

    move-result-object v0

    return-object v0

    .line 101
    :catch_10f
    move-exception v0

    .line 102
    new-instance v1, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/reporting/b;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 103
    :catch_116
    move-exception v0

    .line 104
    new-instance v1, Lcom/google/googlenav/friend/reporting/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/reporting/b;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_11d
    move v0, v2

    .line 143
    goto :goto_cc

    :cond_11f
    move v1, v2

    .line 148
    goto :goto_e1
.end method
