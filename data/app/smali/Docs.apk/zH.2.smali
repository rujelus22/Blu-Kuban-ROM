.class public LzH;
.super Ljava/lang/Object;
.source "DocumentImageManager.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "LAa;",
            ">;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lxr;

.field private a:LzW;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LzH;->a:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LzH;->a:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, LzH;->b:Ljava/util/Map;

    .line 34
    iput-object v4, p0, LzH;->a:Lxr;

    .line 35
    iput-object v4, p0, LzH;->a:LzW;

    return-void
.end method

.method static synthetic a(LzH;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LzH;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(LzH;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LzH;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(LzH;)LzW;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LzH;->a:LzW;

    return-object v0
.end method

.method private a(Ljava/lang/String;LAa;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, LzH;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 144
    if-nez v0, :cond_14

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    iget-object v1, p0, LzH;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method private a(Ljava/lang/String;LAa;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, LzH;->a(Ljava/lang/String;LAa;)V

    .line 130
    iget-object v0, p0, LzH;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p3, :cond_29

    :cond_d
    invoke-direct {p0, p1}, LzH;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 132
    iget-object v0, p0, LzH;->a:Lxr;

    if-nez v0, :cond_1f

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image load requested but no url fetcher provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1f
    iget-object v0, p0, LzH;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, LzH;->a:Lxr;

    invoke-interface {v0, p1}, Lxr;->fetchImageUrl(Ljava/lang/String;)V

    .line 140
    :cond_29
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, LzH;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    if-nez v0, :cond_c

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, LzH;->a:LzW;

    invoke-virtual {v1, v0}, LzW;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method static synthetic b(LzH;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LzH;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;LAa;ZII)Landroid/graphics/drawable/Drawable;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, LzH;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    if-eqz v0, :cond_19

    .line 101
    iget-object v2, p0, LzH;->a:LzW;

    invoke-virtual {v2, v0, p4, p5}, LzW;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_14

    .line 114
    :goto_13
    return-object v0

    .line 109
    :cond_14
    invoke-direct {p0, p1, p2, p3}, LzH;->a(Ljava/lang/String;LAa;Z)V

    move-object v0, v1

    .line 110
    goto :goto_13

    .line 113
    :cond_19
    invoke-direct {p0, p1, p2, p3}, LzH;->a(Ljava/lang/String;LAa;Z)V

    move-object v0, v1

    .line 114
    goto :goto_13
.end method

.method public a(Lxr;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, LzH;->a:Lxr;

    if-eqz v0, :cond_a

    .line 44
    iget-object v0, p0, LzH;->a:Lxr;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lxr;->setImageListener(Lxs;)V

    .line 46
    :cond_a
    if-eqz p1, :cond_14

    .line 47
    new-instance v0, LzI;

    invoke-direct {v0, p0}, LzI;-><init>(LzH;)V

    invoke-interface {p1, v0}, Lxr;->setImageListener(Lxs;)V

    .line 77
    :cond_14
    iput-object p1, p0, LzH;->a:Lxr;

    .line 78
    return-void
.end method

.method public a(LzW;)V
    .registers 3
    .parameter

    .prologue
    .line 84
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzW;

    iput-object v0, p0, LzH;->a:LzW;

    .line 85
    return-void
.end method
