.class public LHa;
.super Ljava/lang/Object;
.source "DocListFragment.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:LsO;


# direct methods
.method private constructor <init>(Ljava/lang/String;LsO;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, LHa;->a:Ljava/lang/String;

    .line 150
    iput-object p2, p0, LHa;->a:LsO;

    .line 151
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;LsO;LGW;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, LHa;-><init>(Ljava/lang/String;LsO;)V

    return-void
.end method

.method public static synthetic a(LHa;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, LHa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(LHa;)LsO;
    .registers 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, LHa;->a:LsO;

    return-object v0
.end method
