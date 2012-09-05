.class public final Lcg;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private application:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr;",
            ">;"
        }
    .end annotation
.end field

.field private call:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbt;",
            ">;"
        }
    .end annotation
.end field

.field private contact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbv;",
            ">;"
        }
    .end annotation
.end field

.field private driving:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbw;",
            ">;"
        }
    .end annotation
.end field

.field private dwd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbx;",
            ">;"
        }
    .end annotation
.end field

.field private gps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcb;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcd;",
            ">;"
        }
    .end annotation
.end field

.field private locking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lce;",
            ">;"
        }
    .end annotation
.end field

.field private mms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcf;",
            ">;"
        }
    .end annotation
.end field

.field private sms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcj;",
            ">;"
        }
    .end annotation
.end field

.field private time:J

.field private windowShade:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final getApplication()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcg;->application:Ljava/util/List;

    return-object v0
.end method

.method public final getCall()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcg;->call:Ljava/util/List;

    return-object v0
.end method

.method public final getContact()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcg;->contact:Ljava/util/List;

    return-object v0
.end method

.method public final getDriving()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcg;->driving:Ljava/util/List;

    return-object v0
.end method

.method public final getDwd()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcg;->dwd:Ljava/util/List;

    return-object v0
.end method

.method public final getGps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcg;->gps:Ljava/util/List;

    return-object v0
.end method

.method public final getLocation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcg;->location:Ljava/util/List;

    return-object v0
.end method

.method public final getLocking()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lce;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcg;->locking:Ljava/util/List;

    return-object v0
.end method

.method public final getMms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcg;->mms:Ljava/util/List;

    return-object v0
.end method

.method public final getSms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcg;->sms:Ljava/util/List;

    return-object v0
.end method

.method public final getTime()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcg;->time:J

    return-wide v0
.end method

.method public final getWindowShade()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcg;->windowShade:Ljava/util/List;

    return-object v0
.end method

.method public final mergeApplicationNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcg;->application:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepNewest(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->application:Ljava/util/List;

    .line 169
    return-void
.end method

.method public final mergeCallActivityNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcg;->call:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->call:Ljava/util/List;

    .line 178
    return-void
.end method

.method public final mergeContactNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcg;->contact:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepNewest(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->contact:Ljava/util/List;

    .line 165
    return-void
.end method

.method public final mergeDrivingStateNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcg;->driving:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->driving:Ljava/util/List;

    .line 186
    return-void
.end method

.method public final mergeDwdNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcg;->dwd:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->dwd:Ljava/util/List;

    .line 161
    return-void
.end method

.method public final mergeGpsStateNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcg;->gps:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->gps:Ljava/util/List;

    .line 182
    return-void
.end method

.method public final mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    if-nez p2, :cond_4

    move-object v0, p1

    .line 135
    :goto_3
    return-object v0

    .line 129
    :cond_4
    if-nez p1, :cond_c

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 132
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method public final mergeKeepNewest(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    if-nez p2, :cond_4

    move-object v0, p1

    .line 140
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3
.end method

.method public final mergeLocationNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcg;->location:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->location:Ljava/util/List;

    .line 145
    return-void
.end method

.method public final mergeLockingNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lce;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcg;->locking:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->locking:Ljava/util/List;

    .line 157
    return-void
.end method

.method public final mergeMMSNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcg;->mms:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->mms:Ljava/util/List;

    .line 153
    return-void
.end method

.method public final mergeSMSNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcg;->sms:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->sms:Ljava/util/List;

    .line 149
    return-void
.end method

.method public final mergeWindowShadeNotifications(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcg;->windowShade:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcg;->mergeKeepAll(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcg;->windowShade:Ljava/util/List;

    .line 174
    return-void
.end method

.method public final mergeWithOldNotification(Lcg;)Lcg;
    .registers 5
    .parameter

    .prologue
    .line 190
    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    .line 191
    iget-wide v1, p0, Lcg;->time:J

    iput-wide v1, v0, Lcg;->time:J

    .line 193
    if-eqz p1, :cond_42

    .line 194
    iget-object v1, p1, Lcg;->location:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeLocationNotifications(Ljava/util/Collection;)V

    .line 195
    iget-object v1, p1, Lcg;->sms:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeSMSNotifications(Ljava/util/Collection;)V

    .line 196
    iget-object v1, p1, Lcg;->mms:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeMMSNotifications(Ljava/util/Collection;)V

    .line 197
    iget-object v1, p1, Lcg;->locking:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeLockingNotifications(Ljava/util/Collection;)V

    .line 198
    iget-object v1, p1, Lcg;->dwd:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeDwdNotifications(Ljava/util/Collection;)V

    .line 199
    iget-object v1, p1, Lcg;->contact:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeContactNotifications(Ljava/util/Collection;)V

    .line 200
    iget-object v1, p1, Lcg;->application:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeApplicationNotifications(Ljava/util/Collection;)V

    .line 201
    iget-object v1, p1, Lcg;->windowShade:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeWindowShadeNotifications(Ljava/util/Collection;)V

    .line 202
    iget-object v1, p1, Lcg;->gps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeGpsStateNotifications(Ljava/util/Collection;)V

    .line 203
    iget-object v1, p1, Lcg;->driving:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeDrivingStateNotifications(Ljava/util/Collection;)V

    .line 204
    iget-object v1, p1, Lcg;->call:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeCallActivityNotifications(Ljava/util/Collection;)V

    .line 207
    :cond_42
    iget-object v1, p0, Lcg;->location:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeLocationNotifications(Ljava/util/Collection;)V

    .line 208
    iget-object v1, p0, Lcg;->sms:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeSMSNotifications(Ljava/util/Collection;)V

    .line 209
    iget-object v1, p0, Lcg;->mms:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeMMSNotifications(Ljava/util/Collection;)V

    .line 210
    iget-object v1, p0, Lcg;->locking:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeLockingNotifications(Ljava/util/Collection;)V

    .line 211
    iget-object v1, p0, Lcg;->dwd:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeDwdNotifications(Ljava/util/Collection;)V

    .line 212
    iget-object v1, p0, Lcg;->contact:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeContactNotifications(Ljava/util/Collection;)V

    .line 213
    iget-object v1, p0, Lcg;->application:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeApplicationNotifications(Ljava/util/Collection;)V

    .line 214
    iget-object v1, p0, Lcg;->windowShade:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeWindowShadeNotifications(Ljava/util/Collection;)V

    .line 215
    iget-object v1, p0, Lcg;->driving:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeDrivingStateNotifications(Ljava/util/Collection;)V

    .line 216
    iget-object v1, p0, Lcg;->gps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeGpsStateNotifications(Ljava/util/Collection;)V

    .line 217
    iget-object v1, p0, Lcg;->call:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->mergeCallActivityNotifications(Ljava/util/Collection;)V

    .line 219
    return-object v0
.end method

.method public final setApplication(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcg;->application:Ljava/util/List;

    .line 85
    return-void
.end method

.method public final setCall(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcg;->call:Ljava/util/List;

    .line 125
    return-void
.end method

.method public final setContact(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcg;->contact:Ljava/util/List;

    .line 93
    return-void
.end method

.method public final setDriving(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcg;->driving:Ljava/util/List;

    .line 117
    return-void
.end method

.method public final setDwd(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcg;->dwd:Ljava/util/List;

    .line 77
    return-void
.end method

.method public final setGps(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lcg;->gps:Ljava/util/List;

    .line 109
    return-void
.end method

.method public final setLocation(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcg;->location:Ljava/util/List;

    .line 45
    return-void
.end method

.method public final setLocking(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lce;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcg;->locking:Ljava/util/List;

    .line 69
    return-void
.end method

.method public final setMms(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcg;->mms:Ljava/util/List;

    .line 61
    return-void
.end method

.method public final setSms(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcg;->sms:Ljava/util/List;

    .line 53
    return-void
.end method

.method public final setTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcg;->time:J

    .line 37
    return-void
.end method

.method public final setWindowShade(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcg;->windowShade:Ljava/util/List;

    .line 101
    return-void
.end method
