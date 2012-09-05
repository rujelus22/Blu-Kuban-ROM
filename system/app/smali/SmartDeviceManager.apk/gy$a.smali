.class public final Lgy$a;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgy$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Lgy$a$a;


# direct methods
.method public constructor <init>(Lgy$a$a;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lgy$a;->b:Lgy$a$a;

    .line 67
    iput-object p2, p0, Lgy$a;->a:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lgy$a;->b:Lgy$a$a;

    sget-object v1, Lgy$a$a;->MANAGED_REFERENCE:Lgy$a$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lgy$a;->b:Lgy$a$a;

    sget-object v1, Lgy$a$a;->BACK_REFERENCE:Lgy$a$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
