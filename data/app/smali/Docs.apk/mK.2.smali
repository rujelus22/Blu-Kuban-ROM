.class final LmK;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements LadJ;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, LmK;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, LmK;->b:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public a(LadI;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    check-cast p1, LaeT;

    .line 80
    iget-object v0, p0, LmK;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, LaeT;->a(Ljava/lang/String;)LaeT;

    .line 81
    iget-object v0, p0, LmK;->b:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 82
    const-string v0, "pageToken"

    iget-object v1, p0, LmK;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, LaeT;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    :cond_12
    return-void
.end method
