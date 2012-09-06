.class public LgP;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"


# instance fields
.field public final a:I

.field public final a:Ljava/lang/String;

.field public final a:Lnk;

.field public final b:I


# direct methods
.method public constructor <init>(Lnk;IILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, LgP;->a:Lnk;

    .line 123
    iput p2, p0, LgP;->a:I

    .line 124
    iput p3, p0, LgP;->b:I

    .line 125
    iput-object p4, p0, LgP;->a:Ljava/lang/String;

    .line 126
    return-void
.end method
