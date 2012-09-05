.class Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
.super Ljava/lang/Object;
.source "AgendaExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field end:I

.field goToTime:Landroid/text/format/Time;

.field queryStartMillis:J

.field queryType:I

.field start:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "queryType"

    .prologue
    .line 231
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    .line 233
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    if-ne p0, p1, :cond_5

    .line 277
    :cond_4
    :goto_4
    return v1

    .line 259
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 260
    goto :goto_4

    .line 261
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 262
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 263
    check-cast v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    .line 264
    .local v0, other:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    iget v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    iget v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    if-ne v3, v4, :cond_32

    iget-wide v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v5, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryStartMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_32

    iget v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    iget v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    iget v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    if-eq v3, v4, :cond_34

    :cond_32
    move v1, v2

    .line 266
    goto :goto_4

    .line 268
    :cond_34
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_4a

    .line 269
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v5, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 270
    goto :goto_4

    .line 273
    :cond_4a
    iget-object v3, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_4

    move v1, v2

    .line 274
    goto :goto_4
.end method
