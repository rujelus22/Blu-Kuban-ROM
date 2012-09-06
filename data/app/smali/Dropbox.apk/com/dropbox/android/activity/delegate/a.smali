.class public abstract enum Lcom/dropbox/android/activity/delegate/a;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/delegate/a;

.field public static final enum b:Lcom/dropbox/android/activity/delegate/a;

.field public static final enum c:Lcom/dropbox/android/activity/delegate/a;

.field public static final enum d:Lcom/dropbox/android/activity/delegate/a;

.field public static final enum e:Lcom/dropbox/android/activity/delegate/a;

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final synthetic i:[Lcom/dropbox/android/activity/delegate/a;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/dropbox/android/activity/delegate/b;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/a;->a:Lcom/dropbox/android/activity/delegate/a;

    .line 43
    new-instance v0, Lcom/dropbox/android/activity/delegate/c;

    const-string v1, "UNLOCK"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/delegate/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/a;->b:Lcom/dropbox/android/activity/delegate/a;

    .line 60
    new-instance v0, Lcom/dropbox/android/activity/delegate/d;

    const-string v1, "NEW_TEXT"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/delegate/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/a;->c:Lcom/dropbox/android/activity/delegate/a;

    .line 85
    new-instance v0, Lcom/dropbox/android/activity/delegate/e;

    const-string v1, "NEW_FOLDER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/activity/delegate/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/a;->d:Lcom/dropbox/android/activity/delegate/a;

    .line 96
    new-instance v0, Lcom/dropbox/android/activity/delegate/f;

    const-string v1, "SETTINGS"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/activity/delegate/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/a;->e:Lcom/dropbox/android/activity/delegate/a;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/android/activity/delegate/a;

    sget-object v1, Lcom/dropbox/android/activity/delegate/a;->a:Lcom/dropbox/android/activity/delegate/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/android/activity/delegate/a;->b:Lcom/dropbox/android/activity/delegate/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/delegate/a;->c:Lcom/dropbox/android/activity/delegate/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/activity/delegate/a;->d:Lcom/dropbox/android/activity/delegate/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/activity/delegate/a;->e:Lcom/dropbox/android/activity/delegate/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/android/activity/delegate/a;->i:[Lcom/dropbox/android/activity/delegate/a;

    .line 110
    const-class v0, Lcom/dropbox/android/activity/delegate/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/delegate/a;->f:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/activity/delegate/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    const-class v0, Lcom/dropbox/android/activity/delegate/a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/a;

    .line 121
    sget-object v2, Lcom/dropbox/android/activity/delegate/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 123
    :cond_7e
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/a;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/activity/delegate/a;->h:I

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/delegate/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/dropbox/android/activity/delegate/a;
    .registers 3
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/android/activity/delegate/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/a;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/dropbox/android/activity/delegate/a;->b(Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/dropbox/android/activity/delegate/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1e

    if-eqz p3, :cond_1e

    .line 138
    const-string v0, "/"

    .line 139
    if-eqz p1, :cond_d

    .line 140
    invoke-interface {p1}, Lcom/dropbox/android/activity/D;->n()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_d
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v1

    new-instance v2, Lcom/dropbox/android/util/Z;

    invoke-direct {v2, v0}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p4}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/util/Z;Landroid/net/Uri;Z)V

    .line 146
    :goto_1d
    return-void

    .line 144
    :cond_1e
    sget-object v0, Lcom/dropbox/android/activity/delegate/a;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed Activity Result or null Uri from mediaImport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/delegate/a;
    .registers 2
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/dropbox/android/activity/delegate/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/a;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/delegate/a;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/dropbox/android/activity/delegate/a;->i:[Lcom/dropbox/android/activity/delegate/a;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/delegate/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/delegate/a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/dropbox/android/activity/delegate/a;->h:I

    return v0
.end method

.method public a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 152
    return-void
.end method

.method abstract a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;)V
.end method
