.class public final Ljv;
.super Lha;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljv$b;,
        Ljv$c;,
        Ljv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lha",
        "<",
        "Lju;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    new-instance v0, Ljv;

    invoke-direct {v0}, Ljv;-><init>()V

    sput-object v0, Ljv;->a:Ljv;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Lha;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lhb;Lnd;Lha$a;)Lgz;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 16
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v0

    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0, p3}, Ljl;->a(Ljava/lang/Class;Lgy;Lha$a;)Ljl;

    move-result-object v1

    sget-object v2, Lhb$a;->USE_GETTERS_AS_SETTERS:Lhb$a;

    invoke-virtual {p1, v2}, Lhb;->a(Lhb$a;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Ljv$b;->a:Ljv$b;

    :goto_17
    invoke-virtual {v1, v2, v3}, Ljl;->a(Ljy;Z)V

    invoke-virtual {v1}, Ljl;->g()V

    invoke-virtual {v1, v3}, Ljl;->a(Z)V

    new-instance v2, Lju;

    invoke-direct {v2, p2, v1, v0}, Lju;-><init>(Lnd;Ljl;Lgy;)V

    return-object v2

    :cond_26
    sget-object v2, Ljv$c;->b:Ljv$c;

    goto :goto_17
.end method

.method public final bridge synthetic a(Lhl;Ljava/lang/Class;Lha$a;)Lgz;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-interface {p1}, Lhl;->a()Lgy;

    move-result-object v0

    invoke-static {p2, v0, p3}, Ljl;->a(Ljava/lang/Class;Lgy;Lha$a;)Ljl;

    move-result-object v1

    new-instance v2, Lju;

    invoke-static {p2}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lju;-><init>(Lnd;Ljl;Lgy;)V

    return-object v2
.end method

.method public final bridge synthetic a(Lhq;Lnd;Lha$a;)Lgz;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p1}, Lhq;->a()Lgy;

    move-result-object v0

    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0, p3}, Ljl;->a(Ljava/lang/Class;Lgy;Lha$a;)Ljl;

    move-result-object v1

    sget-object v2, Ljv$a;->a:Ljv$a;

    invoke-virtual {v1, v2, v3}, Ljl;->a(Ljy;Z)V

    invoke-virtual {v1}, Ljl;->g()V

    invoke-virtual {v1, v3}, Ljl;->a(Z)V

    new-instance v2, Lju;

    invoke-direct {v2, p2, v1, v0}, Lju;-><init>(Lnd;Ljl;Lgy;)V

    return-object v2
.end method

.method public final bridge synthetic b(Lhb;Lnd;Lha$a;)Lgz;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v0

    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0, p3}, Ljl;->a(Ljava/lang/Class;Lgy;Lha$a;)Ljl;

    move-result-object v1

    invoke-virtual {v1}, Ljl;->g()V

    new-instance v2, Lju;

    invoke-direct {v2, p2, v1, v0}, Lju;-><init>(Lnd;Ljl;Lgy;)V

    return-object v2
.end method
