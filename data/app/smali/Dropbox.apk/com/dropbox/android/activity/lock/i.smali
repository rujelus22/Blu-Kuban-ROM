.class public abstract enum Lcom/dropbox/android/activity/lock/i;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/lock/i;

.field public static final enum b:Lcom/dropbox/android/activity/lock/i;

.field public static final enum c:Lcom/dropbox/android/activity/lock/i;

.field public static final enum d:Lcom/dropbox/android/activity/lock/i;

.field public static final enum e:Lcom/dropbox/android/activity/lock/i;

.field private static f:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final synthetic h:[Lcom/dropbox/android/activity/lock/i;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/dropbox/android/activity/lock/j;

    const-string v1, "LOCK_SCREEN"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/lock/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/lock/i;->a:Lcom/dropbox/android/activity/lock/i;

    .line 59
    new-instance v0, Lcom/dropbox/android/activity/lock/k;

    const-string v1, "NEW_CODE"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/lock/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/lock/i;->b:Lcom/dropbox/android/activity/lock/i;

    .line 79
    new-instance v0, Lcom/dropbox/android/activity/lock/l;

    const-string v1, "REMOVE_CODE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/lock/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/lock/i;->c:Lcom/dropbox/android/activity/lock/i;

    .line 96
    new-instance v0, Lcom/dropbox/android/activity/lock/m;

    const-string v1, "CHANGE_CODE"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/activity/lock/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/lock/i;->d:Lcom/dropbox/android/activity/lock/i;

    .line 123
    new-instance v0, Lcom/dropbox/android/activity/lock/n;

    const-string v1, "REMOVE_ERASE_ON_FAILURE"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/activity/lock/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/lock/i;->e:Lcom/dropbox/android/activity/lock/i;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/android/activity/lock/i;

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->a:Lcom/dropbox/android/activity/lock/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->b:Lcom/dropbox/android/activity/lock/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->c:Lcom/dropbox/android/activity/lock/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->d:Lcom/dropbox/android/activity/lock/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->e:Lcom/dropbox/android/activity/lock/i;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/android/activity/lock/i;->h:[Lcom/dropbox/android/activity/lock/i;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/activity/lock/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    const-class v0, Lcom/dropbox/android/activity/lock/i;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/lock/i;

    .line 150
    sget-object v2, Lcom/dropbox/android/activity/lock/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/lock/i;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 152
    :cond_76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/i;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/dropbox/android/activity/lock/i;->g:I

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/lock/i;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/dropbox/android/activity/lock/i;
    .registers 3
    .parameter

    .prologue
    .line 162
    sget-object v0, Lcom/dropbox/android/activity/lock/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/lock/i;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/lock/i;
    .registers 2
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/dropbox/android/activity/lock/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/lock/i;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/lock/i;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/dropbox/android/activity/lock/i;->h:[Lcom/dropbox/android/activity/lock/i;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/lock/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/lock/i;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lcom/dropbox/android/activity/lock/i;->g:I

    return v0
.end method

.method public abstract a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I
.end method

.method public abstract a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V
.end method
