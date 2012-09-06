.class public Lqg;
.super Ljava/lang/Object;
.source "FileOpenerIntentCreatorImpl.java"

# interfaces
.implements LpZ;


# static fields
.field public static final a:Lqg;


# instance fields
.field private final a:Landroid/content/Intent;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 178
    new-instance v0, Lqg;

    invoke-direct {v0}, Lqg;-><init>()V

    sput-object v0, Lqg;->a:Lqg;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lqg;->a:Landroid/content/Intent;

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lqg;->a:Ljava/util/List;

    .line 191
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lqg;->a:Landroid/content/Intent;

    .line 185
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lqg;->a:Ljava/util/List;

    .line 186
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Intent;Ljava/util/List;Lqa;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lqg;-><init>(Landroid/content/Intent;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;
    .registers 3

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;

    iget-object v1, p0, Lqg;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public a(I)Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;
    .registers 5
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lqg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 196
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lqg;->a:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 197
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;

    invoke-direct {v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lqg;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 213
    const-string v0, "QueryResultImpl[intent=%s, %d targets]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lqg;->a:Landroid/content/Intent;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lqg;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
