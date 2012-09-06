.class public Ldbxyzptlk/l/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Ldbxyzptlk/l/c;->a:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Ldbxyzptlk/l/c;->b:Ljava/lang/String;

    .line 170
    iput-wide p3, p0, Ldbxyzptlk/l/c;->f:J

    .line 171
    iput-object p5, p0, Ldbxyzptlk/l/c;->g:Ljava/lang/String;

    .line 172
    iput-wide p6, p0, Ldbxyzptlk/l/c;->c:J

    .line 173
    iput-wide p8, p0, Ldbxyzptlk/l/c;->d:J

    .line 174
    iput-wide p10, p0, Ldbxyzptlk/l/c;->e:J

    .line 175
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v0, "country"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/c;->a:Ljava/lang/String;

    .line 150
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/c;->b:Ljava/lang/String;

    .line 151
    const-string v0, "uid"

    invoke-static {p1, v0}, Ldbxyzptlk/l/a;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/l/c;->f:J

    .line 152
    const-string v0, "referral_link"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/l/c;->g:Ljava/lang/String;

    .line 154
    const-string v0, "quota_info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    check-cast v0, Ljava/util/Map;

    .line 157
    const-string v1, "quota"

    invoke-static {v0, v1}, Ldbxyzptlk/l/a;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Ldbxyzptlk/l/c;->c:J

    .line 158
    const-string v1, "normal"

    invoke-static {v0, v1}, Ldbxyzptlk/l/a;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Ldbxyzptlk/l/c;->d:J

    .line 159
    const-string v1, "shared"

    invoke-static {v0, v1}, Ldbxyzptlk/l/a;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/l/c;->e:J

    .line 160
    return-void
.end method
