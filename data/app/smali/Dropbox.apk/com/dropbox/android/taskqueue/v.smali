.class public final enum Lcom/dropbox/android/taskqueue/v;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/taskqueue/v;

.field public static final enum b:Lcom/dropbox/android/taskqueue/v;

.field public static final enum c:Lcom/dropbox/android/taskqueue/v;

.field private static final synthetic e:[Lcom/dropbox/android/taskqueue/v;


# instance fields
.field private final d:Lcom/dropbox/android/taskqueue/p;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 115
    new-instance v0, Lcom/dropbox/android/taskqueue/v;

    const-string v1, "GALLERY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/dropbox/android/taskqueue/v;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/dropbox/android/taskqueue/v;->a:Lcom/dropbox/android/taskqueue/v;

    .line 116
    new-instance v0, Lcom/dropbox/android/taskqueue/v;

    const-string v1, "THUMB"

    invoke-direct {v0, v1, v5, v7, v3}, Lcom/dropbox/android/taskqueue/v;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    .line 117
    new-instance v0, Lcom/dropbox/android/taskqueue/v;

    const-string v1, "THUMB_GALLERY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/dropbox/android/taskqueue/v;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/dropbox/android/taskqueue/v;->c:Lcom/dropbox/android/taskqueue/v;

    .line 114
    new-array v0, v7, [Lcom/dropbox/android/taskqueue/v;

    sget-object v1, Lcom/dropbox/android/taskqueue/v;->a:Lcom/dropbox/android/taskqueue/v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/taskqueue/v;->c:Lcom/dropbox/android/taskqueue/v;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/android/taskqueue/v;->e:[Lcom/dropbox/android/taskqueue/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    new-instance v0, Lcom/dropbox/android/taskqueue/p;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lcom/dropbox/android/taskqueue/p;-><init>(IILjava/util/List;)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/v;->d:Lcom/dropbox/android/taskqueue/p;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/taskqueue/v;)Lcom/dropbox/android/taskqueue/p;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/v;->d:Lcom/dropbox/android/taskqueue/p;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/v;
    .registers 2
    .parameter

    .prologue
    .line 114
    const-class v0, Lcom/dropbox/android/taskqueue/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/v;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/taskqueue/v;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/dropbox/android/taskqueue/v;->e:[Lcom/dropbox/android/taskqueue/v;

    invoke-virtual {v0}, [Lcom/dropbox/android/taskqueue/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/taskqueue/v;

    return-object v0
.end method
