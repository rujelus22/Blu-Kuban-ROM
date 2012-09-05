.class public Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;
.super Ljava/lang/Object;
.source "LocalSearchServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;,
        Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;,
        Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;
    }
.end annotation


# static fields
.field static final AUDIT_LOG_MAX_RETRYS:I = 0xa

.field public static final INFO_ACTIVITY_CLICKED_DETAILS:Ljava/lang/String; = "UserClickedDetails"

.field public static final INFO_ACTIVITY_CLICKED_LINK:Ljava/lang/String; = "UserClickedLink"

.field public static final INFO_ACTIVITY_CLICKED_NAVIGATE:Ljava/lang/String; = "UserClickedNavigate"

.field public static final INFO_ACTIVITY_CLICKED_ON_MAP:Ljava/lang/String; = "UserClickedOnMap"

.field public static final INFO_ACTIVITY_CLICKED_RESERVE:Ljava/lang/String; = "UserClickedReserve"

.field public static final INFO_ACTIVITY_CLICKED_TO_CALL_BRIEF:Ljava/lang/String; = "UserClickedToCallBrief"

.field public static final INFO_ACTIVITY_CLICKED_TO_CALL_DETAIL:Ljava/lang/String; = "UserClickedToCallDetail"

.field static final INFO_ACTIVITY_MAX_RETRYS:I = 0xa

.field static final INFO_ACTIVITY_RETRY_DELAY_MS:I = 0x4e20


# instance fields
.field m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

.field m_dateFormat:Ljava/text/SimpleDateFormat;

.field m_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_dateFormat:Ljava/text/SimpleDateFormat;

    .line 28
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getLocalSearchURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_url:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method addActionTime(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 296
    const-string v0, "<ActionTime>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v0, "</ActionTime>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    return-void
.end method

.method cancelCurrentRequest()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    if-eqz v0, :cond_c

    .line 276
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->cancel()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 279
    :cond_c
    return-void
.end method

.method public sendAuditLogRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "requestType"
    .parameter "trackingId"
    .parameter "action"

    .prologue
    .line 207
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendAuditLogRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    return-void
.end method

.method public sendAuditLogRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .parameter "requestType"
    .parameter "trackingId"
    .parameter "action"
    .parameter "retryNum"

    .prologue
    const/4 v9, 0x1

    .line 211
    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v0, 0xc8

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 212
    .local v7, sb:Ljava/lang/StringBuffer;
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v0, "<"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v0, ">"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v0, "<TrackingID>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v0, "</TrackingID>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v0, "<Action>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v7, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v0, "</Action> "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p0, v7}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->addActionTime(Ljava/lang/StringBuffer;)V

    .line 223
    const-string v0, "</"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v0, ">"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v8, "LocalSearch-AuditLogHandler"

    new-instance v0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$AuditLogHTTPHandler;-><init>(Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_url:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v0, v1, v2}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v6

    .line 227
    .local v6, req:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    const-wide/16 v0, 0x4e20

    invoke-virtual {v6, v0, v1, v9, v9}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->schedule(JZZ)V

    .line 228
    return-void
.end method

.method public sendInfoActivityRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;)V
    .registers 4
    .parameter "bi"
    .parameter "actionType"

    .prologue
    .line 130
    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->sendInfoActivityRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;I)V

    .line 131
    return-void
.end method

.method public sendInfoActivityRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;I)V
    .registers 12
    .parameter "bi"
    .parameter "actionType"
    .parameter "retryNum"

    .prologue
    const/4 v7, 0x1

    .line 134
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 135
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v3, "<InfoActivityRequest><ListingID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getListingID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v3, "</ListingID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, phoneNumber:Ljava/lang/String;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_37

    .line 141
    const-string v3, "<PhoneNumber>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v3, "</PhoneNumber>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_37
    const-string v3, "<Action>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v3, "</Action> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {p0, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->addActionTime(Ljava/lang/StringBuffer;)V

    .line 149
    const-string v3, "</InfoActivityRequest>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v3, "LocalSearch-InfoActivity"

    new-instance v4, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$InfoActivityHTTPHandler;-><init>(Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v1

    .line 152
    .local v1, req:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v3, v4, v7, v7}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->schedule(JZZ)V

    .line 153
    return-void
.end method

.method public declared-synchronized sendMoreDetailsRequest(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;)V
    .registers 9
    .parameter "currentBusinessItem"
    .parameter "requestListener"

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->cancelCurrentRequest()V

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 69
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "<ListingDetailRequest><ListingID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getListingID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "</ListingID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {p0, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->addActionTime(Ljava/lang/StringBuffer;)V

    .line 74
    const-string v1, "</ListingDetailRequest>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "LocalSearch-Details"

    new-instance v2, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;

    invoke-direct {v2, p0, p1, p2}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;-><init>(Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Lcom/vlingo/client/localsearch/service/LocalSearchListing;Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;)V

    iget-object v3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 77
    iget-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vlingo/client/core/http/HttpRequest;->schedule(JZZ)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 78
    monitor-exit p0

    return-void

    .line 66
    .end local v0           #sb:Ljava/lang/StringBuffer;
    :catchall_47
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendSearchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;)V
    .registers 10
    .parameter "query"
    .parameter "spokenLocation"
    .parameter "requestListener"

    .prologue
    .line 41
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->cancelCurrentRequest()V

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 44
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    const-string v1, "<LocalSearchRequest><Query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, "</Query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-static {p2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 49
    const-string v1, "<SpokenLocation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "</SpokenLocation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_30
    const-string v1, "<MaxListings>20</MaxListings><MaxSponListings>2</MaxSponListings></LocalSearchRequest>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "LocalSearch-Search"

    new-instance v2, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;

    invoke-direct {v2, p0, p3}, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager$LocalSearchHTTPHandler;-><init>(Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;)V

    iget-object v3, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 57
    iget-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchServiceManager;->m_currentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vlingo/client/core/http/HttpRequest;->schedule(JZZ)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 58
    monitor-exit p0

    return-void

    .line 41
    .end local v0           #sb:Ljava/lang/StringBuffer;
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method
