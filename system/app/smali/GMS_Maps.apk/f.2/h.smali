.class public Lf/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Lf/h;

.field private static d:Ljava/lang/Object;


# instance fields
.field private final e:[Lf/i;

.field private final f:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 136
    const-string v0, " +"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/h;->a:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "\\W"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/h;->b:Ljava/util/regex/Pattern;

    .line 140
    new-instance v0, Lf/h;

    const/4 v1, 0x0

    new-array v1, v1, [Lf/i;

    invoke-direct {v0, v1}, Lf/h;-><init>([Lf/i;)V

    sput-object v0, Lf/h;->c:Lf/h;

    return-void
.end method

.method public constructor <init>([Lf/i;)V
    .registers 6
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    :goto_e
    array-length v2, p1

    if-ge v0, v2, :cond_2e

    .line 163
    if-lez v0, :cond_18

    const-string v2, ")|("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_18
    sget-object v2, Lf/h;->b:Ljava/util/regex/Pattern;

    aget-object v3, p1, v0

    iget-object v3, v3, Lf/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "\\\\$0"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 166
    :cond_2e
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lf/h;->f:Ljava/util/regex/Pattern;

    .line 167
    iput-object p1, p0, Lf/h;->e:[Lf/i;

    .line 168
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/ContentResolver;)Lf/h;
    .registers 10
    .parameter

    .prologue
    .line 193
    const-class v2, Lf/h;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->a(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v3

    .line 194
    sget-object v0, Lf/h;->d:Ljava/lang/Object;

    if-ne v3, v0, :cond_30

    .line 196
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 197
    const-string v0, "UrlRules"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using cached rules, versionToken: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2c
    sget-object v0, Lf/h;->c:Lf/h;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_bb

    .line 226
    :goto_2e
    monitor-exit v2

    return-object v0

    .line 202
    :cond_30
    :try_start_30
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 203
    const-string v0, "UrlRules"

    const-string v1, "Scanning for Gservices \"url:*\" rules"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "url:"

    aput-object v4, v0, v1

    invoke-static {p0, v0}, Lcom/google/android/gsf/Gservices;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_59
    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_65
    .catchall {:try_start_30 .. :try_end_65} :catchall_bb

    .line 210
    :try_start_65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_59

    .line 213
    const-string v6, "UrlRules"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a9

    const-string v6, "UrlRules"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Rule "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_a9
    new-instance v6, Lf/i;

    invoke-direct {v6, v1, v0}, Lf/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catchall {:try_start_65 .. :try_end_b1} :catchall_bb
    .catch Lf/j; {:try_start_65 .. :try_end_b1} :catch_b2

    goto :goto_59

    .line 215
    :catch_b2
    move-exception v0

    .line 217
    :try_start_b3
    const-string v1, "UrlRules"

    const-string v6, "Invalid rule from Gservices"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_bb

    goto :goto_59

    .line 193
    :catchall_bb
    move-exception v0

    monitor-exit v2

    throw v0

    .line 220
    :cond_be
    :try_start_be
    new-instance v1, Lf/h;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lf/i;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i;

    invoke-direct {v1, v0}, Lf/h;-><init>([Lf/i;)V

    sput-object v1, Lf/h;->c:Lf/h;

    .line 221
    sput-object v3, Lf/h;->d:Ljava/lang/Object;

    .line 222
    const-string v0, "UrlRules"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 223
    const-string v0, "UrlRules"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New rules stored, versionToken: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_f4
    sget-object v0, Lf/h;->c:Lf/h;
    :try_end_f6
    .catchall {:try_start_be .. :try_end_f6} :catchall_bb

    goto/16 :goto_2e
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lf/h;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lf/i;
    .registers 5
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lf/h;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 178
    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, Lf/h;->e:[Lf/i;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    .line 179
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 180
    iget-object v1, p0, Lf/h;->e:[Lf/i;

    aget-object v0, v1, v0

    .line 184
    :goto_1e
    return-object v0

    .line 178
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 184
    :cond_22
    sget-object v0, Lf/i;->e:Lf/i;

    goto :goto_1e
.end method
