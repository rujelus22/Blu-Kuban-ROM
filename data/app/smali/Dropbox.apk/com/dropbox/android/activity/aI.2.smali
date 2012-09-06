.class public abstract enum Lcom/dropbox/android/activity/aI;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/aI;

.field public static final enum b:Lcom/dropbox/android/activity/aI;

.field public static final enum c:Lcom/dropbox/android/activity/aI;

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final synthetic f:[Lcom/dropbox/android/activity/aI;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/dropbox/android/activity/aJ;

    const-string v1, "NEW_ACCT_PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/aJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/aI;->a:Lcom/dropbox/android/activity/aI;

    .line 169
    new-instance v0, Lcom/dropbox/android/activity/aK;

    const-string v1, "LOGIN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/aK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/aI;->b:Lcom/dropbox/android/activity/aI;

    .line 186
    new-instance v0, Lcom/dropbox/android/activity/aL;

    const-string v1, "REQUEST_PASSWORD_RESET_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/aL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/aI;->c:Lcom/dropbox/android/activity/aI;

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/android/activity/aI;

    sget-object v1, Lcom/dropbox/android/activity/aI;->a:Lcom/dropbox/android/activity/aI;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/aI;->b:Lcom/dropbox/android/activity/aI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/aI;->c:Lcom/dropbox/android/activity/aI;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/android/activity/aI;->f:[Lcom/dropbox/android/activity/aI;

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/activity/aI;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    const-class v0, Lcom/dropbox/android/activity/aI;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/aI;

    .line 209
    sget-object v2, Lcom/dropbox/android/activity/aI;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/aI;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 211
    :cond_5a
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    invoke-virtual {p0}, Lcom/dropbox/android/activity/aI;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/dropbox/android/activity/aI;->e:I

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dropbox/android/activity/aH;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/aI;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/dropbox/android/activity/aI;
    .registers 3
    .parameter

    .prologue
    .line 222
    sget-object v0, Lcom/dropbox/android/activity/aI;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/aI;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/aI;
    .registers 2
    .parameter

    .prologue
    .line 147
    const-class v0, Lcom/dropbox/android/activity/aI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/aI;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/aI;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/dropbox/android/activity/aI;->f:[Lcom/dropbox/android/activity/aI;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/aI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/aI;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Lcom/dropbox/android/activity/aI;->e:I

    return v0
.end method

.method abstract a(Lcom/dropbox/android/activity/LoginOrNewAcctActivity;)Landroid/app/Dialog;
.end method
