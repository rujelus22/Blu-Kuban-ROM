.class public LaM/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LY/c;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(LY/c;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LaM/a;->b:Ljava/util/Map;

    .line 80
    iput-object p1, p0, LaM/a;->a:LY/c;

    .line 81
    return-void
.end method

.method static synthetic a(LaM/a;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, LaM/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(LaM/a;Lcom/google/googlenav/F;LaM/f;Lcom/google/googlenav/android/Y;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, LaM/a;->a(Lcom/google/googlenav/F;LaM/f;Lcom/google/googlenav/android/Y;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/F;LaM/f;Lcom/google/googlenav/android/Y;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    if-eqz p3, :cond_c

    .line 262
    const/4 v0, 0x0

    .line 263
    new-instance v1, LaM/e;

    invoke-direct {v1, p0, p2, p1}, LaM/e;-><init>(LaM/a;LaM/f;Lcom/google/googlenav/F;)V

    invoke-virtual {p3, v1, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 273
    :goto_b
    return-void

    .line 271
    :cond_c
    invoke-interface {p2, p1}, LaM/f;->a(Lcom/google/googlenav/F;)V

    goto :goto_b
.end method

.method public static a(Lcom/google/googlenav/common/io/j;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    const-string v0, "SAVED_BGFS_"

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/io/j;->c(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/j;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, LaM/a;->b(Lcom/google/googlenav/common/io/j;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/google/googlenav/common/io/j;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKGROUND_FEATURE_SET_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    invoke-static {p0}, LaM/a;->a(Lcom/google/googlenav/common/io/j;)V

    .line 288
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1, v1, v1}, LaM/a;->a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V

    .line 90
    return-void
.end method

.method public a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, LaM/b;

    iget-object v2, p0, LaM/a;->a:LY/c;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, LaM/b;-><init>(LaM/a;LY/c;ILcom/google/googlenav/F;LaM/g;Lcom/google/googlenav/android/Y;)V

    invoke-virtual {v0}, LaM/b;->g()V

    .line 167
    return-void
.end method

.method public a(ILcom/google/googlenav/android/Y;LaM/f;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, LaM/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/F;

    .line 190
    if-eqz v0, :cond_12

    .line 191
    invoke-direct {p0, v0, p3, p2}, LaM/a;->a(Lcom/google/googlenav/F;LaM/f;Lcom/google/googlenav/android/Y;)V

    .line 251
    :goto_11
    return-void

    .line 195
    :cond_12
    new-instance v0, LaM/d;

    iget-object v2, p0, LaM/a;->a:LY/c;

    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LaM/d;-><init>(LaM/a;LY/c;ILaM/f;Lcom/google/googlenav/android/Y;)V

    invoke-virtual {v0}, LaM/d;->g()V

    goto :goto_11
.end method
