.class public abstract enum LeD;
.super Ljava/lang/Enum;
.source "DocumentOpenMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LeD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LeD;

.field private static final synthetic a:[LeD;

.field public static final enum b:LeD;

.field public static final enum c:LeD;


# instance fields
.field private a:LQM;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, LeE;

    const-string v1, "OPEN"

    sget-object v2, LQM;->a:LQM;

    invoke-direct {v0, v1, v3, v2}, LeE;-><init>(Ljava/lang/String;ILQM;)V

    sput-object v0, LeD;->a:LeD;

    .line 27
    new-instance v0, LeF;

    const-string v1, "OPEN_WITH"

    sget-object v2, LQM;->b:LQM;

    invoke-direct {v0, v1, v4, v2}, LeF;-><init>(Ljava/lang/String;ILQM;)V

    sput-object v0, LeD;->b:LeD;

    .line 36
    new-instance v0, LeG;

    const-string v1, "SEND"

    sget-object v2, LQM;->b:LQM;

    invoke-direct {v0, v1, v5, v2}, LeG;-><init>(Ljava/lang/String;ILQM;)V

    sput-object v0, LeD;->c:LeD;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [LeD;

    sget-object v1, LeD;->a:LeD;

    aput-object v1, v0, v3

    sget-object v1, LeD;->b:LeD;

    aput-object v1, v0, v4

    sget-object v1, LeD;->c:LeD;

    aput-object v1, v0, v5

    sput-object v0, LeD;->a:[LeD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILQM;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQM;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, LeD;->a:LQM;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILQM;LeE;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, LeD;-><init>(Ljava/lang/String;ILQM;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LeD;
    .registers 2
    .parameter

    .prologue
    .line 18
    const-class v0, LeD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LeD;

    return-object v0
.end method

.method public static values()[LeD;
    .registers 1

    .prologue
    .line 18
    sget-object v0, LeD;->a:[LeD;

    invoke-virtual {v0}, [LeD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LeD;

    return-object v0
.end method


# virtual methods
.method public a(LkU;)LQM;
    .registers 4
    .parameter

    .prologue
    .line 67
    sget-object v0, LkU;->a:LkU;

    sget-object v1, LkU;->d:LkU;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    iget-object v0, p0, LeD;->a:LQM;

    .line 70
    :goto_10
    return-object v0

    :cond_11
    sget-object v0, LQM;->a:LQM;

    goto :goto_10
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p3}, LeD;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    if-eqz p2, :cond_d

    .line 60
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :cond_d
    invoke-static {v0, p1}, Lru;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 63
    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)Landroid/content/Intent;
.end method
