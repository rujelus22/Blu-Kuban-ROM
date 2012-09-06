.class public abstract enum Lcom/dropbox/android/activity/lock/c;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/lock/c;

.field public static final enum b:Lcom/dropbox/android/activity/lock/c;

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final synthetic e:[Lcom/dropbox/android/activity/lock/c;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lcom/dropbox/android/activity/lock/d;

    const-string v1, "LOCKED_FOR_NOW"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/lock/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/lock/c;->a:Lcom/dropbox/android/activity/lock/c;

    .line 206
    new-instance v0, Lcom/dropbox/android/activity/lock/g;

    const-string v1, "DIALOG_UNLINK_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/lock/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/lock/c;->b:Lcom/dropbox/android/activity/lock/c;

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/activity/lock/c;

    sget-object v1, Lcom/dropbox/android/activity/lock/c;->a:Lcom/dropbox/android/activity/lock/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/lock/c;->b:Lcom/dropbox/android/activity/lock/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/android/activity/lock/c;->e:[Lcom/dropbox/android/activity/lock/c;

    .line 219
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/activity/lock/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    const-class v0, Lcom/dropbox/android/activity/lock/c;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/lock/c;

    .line 227
    sget-object v2, Lcom/dropbox/android/activity/lock/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/lock/c;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 229
    :cond_4c
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 232
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/c;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/dropbox/android/activity/lock/c;->d:I

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dropbox/android/activity/lock/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/lock/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/dropbox/android/activity/lock/c;
    .registers 3
    .parameter

    .prologue
    .line 239
    sget-object v0, Lcom/dropbox/android/activity/lock/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/lock/c;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/lock/c;
    .registers 2
    .parameter

    .prologue
    .line 176
    const-class v0, Lcom/dropbox/android/activity/lock/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/lock/c;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/lock/c;
    .registers 1

    .prologue
    .line 176
    sget-object v0, Lcom/dropbox/android/activity/lock/c;->e:[Lcom/dropbox/android/activity/lock/c;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/lock/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/lock/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/dropbox/android/activity/lock/c;->d:I

    return v0
.end method

.method abstract a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/app/Dialog;
.end method

.method abstract a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Landroid/app/Dialog;)V
.end method
