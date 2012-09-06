.class public abstract enum Lcom/dropbox/android/activity/delegate/I;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/delegate/I;

.field public static final enum b:Lcom/dropbox/android/activity/delegate/I;

.field public static final enum c:Lcom/dropbox/android/activity/delegate/I;

.field public static final enum d:Lcom/dropbox/android/activity/delegate/I;

.field public static final enum e:Lcom/dropbox/android/activity/delegate/I;

.field public static final enum f:Lcom/dropbox/android/activity/delegate/I;

.field private static final g:Ljava/lang/String;

.field private static h:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final synthetic j:[Lcom/dropbox/android/activity/delegate/I;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/dropbox/android/activity/delegate/J;

    const-string v1, "SETTINGS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/delegate/J;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->a:Lcom/dropbox/android/activity/delegate/I;

    .line 25
    new-instance v0, Lcom/dropbox/android/activity/delegate/K;

    const-string v1, "HELP"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/delegate/K;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->b:Lcom/dropbox/android/activity/delegate/I;

    .line 34
    new-instance v0, Lcom/dropbox/android/activity/delegate/L;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/activity/delegate/L;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->c:Lcom/dropbox/android/activity/delegate/I;

    .line 43
    new-instance v0, Lcom/dropbox/android/activity/delegate/M;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/activity/delegate/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->d:Lcom/dropbox/android/activity/delegate/I;

    .line 49
    new-instance v0, Lcom/dropbox/android/activity/delegate/N;

    const-string v1, "NEW_TEXT"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/android/activity/delegate/N;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->e:Lcom/dropbox/android/activity/delegate/I;

    .line 55
    new-instance v0, Lcom/dropbox/android/activity/delegate/O;

    const-string v1, "NEW_FOLDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->f:Lcom/dropbox/android/activity/delegate/I;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/android/activity/delegate/I;

    sget-object v1, Lcom/dropbox/android/activity/delegate/I;->a:Lcom/dropbox/android/activity/delegate/I;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/delegate/I;->b:Lcom/dropbox/android/activity/delegate/I;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/activity/delegate/I;->c:Lcom/dropbox/android/activity/delegate/I;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/activity/delegate/I;->d:Lcom/dropbox/android/activity/delegate/I;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/activity/delegate/I;->e:Lcom/dropbox/android/activity/delegate/I;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/activity/delegate/I;->f:Lcom/dropbox/android/activity/delegate/I;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->j:[Lcom/dropbox/android/activity/delegate/I;

    .line 63
    const-class v0, Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->g:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/activity/delegate/I;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    const-class v0, Lcom/dropbox/android/activity/delegate/I;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/I;

    .line 74
    sget-object v2, Lcom/dropbox/android/activity/delegate/I;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 76
    :cond_8d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/I;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/activity/delegate/I;->i:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/J;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/delegate/I;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/dropbox/android/activity/delegate/I;
    .registers 3
    .parameter

    .prologue
    .line 86
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/I;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/delegate/I;
    .registers 2
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/dropbox/android/activity/delegate/I;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/I;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/delegate/I;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->j:[Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/delegate/I;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/delegate/I;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/dropbox/android/activity/delegate/I;->i:I

    return v0
.end method

.method abstract a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
.end method
