.class abstract enum LWL;
.super Ljava/lang/Enum;
.source "GellyInjectorBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LWL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LWL;

.field private static final synthetic a:[LWL;

.field public static final enum b:LWL;

.field public static final enum c:LWL;

.field public static final enum d:LWL;

.field public static final enum e:LWL;

.field public static final enum f:LWL;

.field public static final enum g:LWL;

.field public static final enum h:LWL;

.field public static final enum i:LWL;


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "LWL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    new-instance v0, LWM;

    const-string v1, "LOAD_USER_ELEMENTS"

    new-array v2, v5, [LWL;

    invoke-direct {v0, v1, v5, v2}, LWM;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->a:LWL;

    .line 76
    new-instance v0, LWN;

    const-string v1, "PROCESS_SCOPE_BINDING"

    new-array v2, v6, [LWL;

    sget-object v3, LWL;->a:LWL;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v6, v2}, LWN;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->b:LWL;

    .line 92
    new-instance v0, LWO;

    const-string v1, "INITIALIZE_INJECTOR_STORE"

    new-array v2, v6, [LWL;

    sget-object v3, LWL;->b:LWL;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v7, v2}, LWO;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->c:LWL;

    .line 103
    new-instance v0, LWP;

    const-string v1, "RESET_STATIC_PROVIDERS"

    new-array v2, v6, [LWL;

    sget-object v3, LWL;->c:LWL;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v8, v2}, LWP;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->d:LWL;

    .line 118
    new-instance v0, LWQ;

    const-string v1, "SET_INSTANCE_BINDING_INSTANCES"

    new-array v2, v7, [LWL;

    sget-object v3, LWL;->c:LWL;

    aput-object v3, v2, v5

    sget-object v3, LWL;->a:LWL;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v9, v2}, LWQ;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->e:LWL;

    .line 151
    new-instance v0, LWR;

    const-string v1, "APPLY_SCOPE"

    const/4 v2, 0x5

    new-array v3, v8, [LWL;

    sget-object v4, LWL;->a:LWL;

    aput-object v4, v3, v5

    sget-object v4, LWL;->c:LWL;

    aput-object v4, v3, v6

    sget-object v4, LWL;->b:LWL;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v2, v3}, LWR;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->f:LWL;

    .line 162
    new-instance v0, LWS;

    const-string v1, "CREATE_INJECTOR"

    const/4 v2, 0x6

    new-array v3, v9, [LWL;

    sget-object v4, LWL;->a:LWL;

    aput-object v4, v3, v5

    sget-object v4, LWL;->c:LWL;

    aput-object v4, v3, v6

    sget-object v4, LWL;->b:LWL;

    aput-object v4, v3, v7

    sget-object v4, LWL;->f:LWL;

    aput-object v4, v3, v8

    invoke-direct {v0, v1, v2, v3}, LWS;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->g:LWL;

    .line 174
    new-instance v0, LWT;

    const-string v1, "POST_INITIALIZATION_INJECTIONS"

    const/4 v2, 0x7

    new-array v3, v6, [LWL;

    sget-object v4, LWL;->g:LWL;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, LWT;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->h:LWL;

    .line 185
    new-instance v0, LWU;

    const-string v1, "PROCESS_LOOKUP_REQUESTS"

    const/16 v2, 0x8

    new-array v3, v7, [LWL;

    sget-object v4, LWL;->g:LWL;

    aput-object v4, v3, v5

    sget-object v4, LWL;->h:LWL;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, LWU;-><init>(Ljava/lang/String;I[LWL;)V

    sput-object v0, LWL;->i:LWL;

    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [LWL;

    sget-object v1, LWL;->a:LWL;

    aput-object v1, v0, v5

    sget-object v1, LWL;->b:LWL;

    aput-object v1, v0, v6

    sget-object v1, LWL;->c:LWL;

    aput-object v1, v0, v7

    sget-object v1, LWL;->d:LWL;

    aput-object v1, v0, v8

    sget-object v1, LWL;->e:LWL;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, LWL;->f:LWL;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LWL;->g:LWL;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LWL;->h:LWL;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LWL;->i:LWL;

    aput-object v2, v0, v1

    sput-object v0, LWL;->a:[LWL;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[LWL;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LWL;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LWL;->a:Ljava/util/Collection;

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[LWL;LWJ;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, LWL;-><init>(Ljava/lang/String;I[LWL;)V

    return-void
.end method

.method private final a(Ljava/util/Collection;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LWL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, LWL;->a:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LWL;->a:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 212
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LWL;
    .registers 2
    .parameter

    .prologue
    .line 62
    const-class v0, LWL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LWL;

    return-object v0
.end method

.method public static values()[LWL;
    .registers 1

    .prologue
    .line 62
    sget-object v0, LWL;->a:[LWL;

    invoke-virtual {v0}, [LWL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWL;

    return-object v0
.end method


# virtual methods
.method final a(LWI;)V
    .registers 3
    .parameter

    .prologue
    .line 204
    invoke-static {p1}, LWI;->a(LWI;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, LWL;->a(Ljava/util/Collection;)V

    .line 205
    invoke-virtual {p0, p1}, LWL;->b(LWI;)V

    .line 206
    invoke-static {p1}, LWI;->a(LWI;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method abstract b(LWI;)V
.end method
