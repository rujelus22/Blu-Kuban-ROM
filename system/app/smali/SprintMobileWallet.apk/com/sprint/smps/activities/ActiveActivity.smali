.class public Lcom/sprint/smps/activities/ActiveActivity;
.super Ljava/lang/Object;
.source "ActiveActivity.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private bookmark:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/sprint/smps/activities/ActiveActivity;->bookmark:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sprint/smps/activities/ActiveActivity;->activity:Landroid/app/Activity;

    .line 12
    iput-object p1, p0, Lcom/sprint/smps/activities/ActiveActivity;->activity:Landroid/app/Activity;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .parameter "activity"
    .parameter "bookmark"

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/sprint/smps/activities/ActiveActivity;->bookmark:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sprint/smps/activities/ActiveActivity;->activity:Landroid/app/Activity;

    .line 17
    iput-object p1, p0, Lcom/sprint/smps/activities/ActiveActivity;->activity:Landroid/app/Activity;

    .line 18
    iput-object p2, p0, Lcom/sprint/smps/activities/ActiveActivity;->bookmark:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sprint/smps/activities/ActiveActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBookmarkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sprint/smps/activities/ActiveActivity;->bookmark:Ljava/lang/String;

    return-object v0
.end method

.method public isBookmarked(Ljava/lang/String;)Z
    .registers 3
    .parameter "bookmark"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/smps/activities/ActiveActivity;->bookmark:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sprint/smps/activities/ActiveActivity;->activity:Landroid/app/Activity;

    .line 39
    return-void
.end method
