.class public abstract Lcom/vlingo/client/core/contacts/ContactsMatcher;
.super Ljava/lang/Object;
.source "ContactsMatcher.java"

# interfaces
.implements Lcom/vlingo/client/core/contacts/ContactListListener;


# static fields
.field public static final ACTION_CALL:Ljava/lang/String; = "call"

.field public static final ACTION_EMAIL:Ljava/lang/String; = "email"

.field public static final ACTION_SMS:Ljava/lang/String; = "sms"

.field public static final AUTO_ACTION_MATCH_DIFF_THRESHOLD_DEFAULT:F = 10.0f

.field public static final AUTO_ACTION_MATCH_SCORE_THRESHOLD_DEFAULT:F = 19.0f

.field public static final AUTO_ACTION_MRU_ABS_THRESHOLD_DEFAULT:F = 0.0f

.field public static final AUTO_ACTION_MRU_DIFF_THRESHOLD_DEFAULT:F = 3.0f

.field public static final AUTO_ACTION_REC_CONFIDENCE_THRESHOLD_DEFAULT:F = 0.0f

.field public static final HOME_PHONE_BIAS:F = 0.004f

.field public static final MOBILE_PHONE_BIAS:F = 0.006f

.field public static final PREFERRED_TYPE_BOOST:F = 0.9f

.field public static final REQUESTED_TYPE_BOOST:F = 0.99f

.field public static final TYPE_AUTO_ACTION_ALWAYS:I = 0x2

.field public static final TYPE_AUTO_ACTION_IF_CONFIDENT:I = 0x1

.field public static final TYPE_AUTO_ACTION_NEVER:I = 0x0

.field public static final WORK_PHONE_BIAS:F = 0.005f

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field public AUTO_ACTION_MATCH_DIFF_THRESHOLD:F

.field public AUTO_ACTION_MATCH_SCORE_THRESHOLD:F

.field public AUTO_ACTION_MRU_ABS_THRESHOLD:F

.field public AUTO_ACTION_MRU_DIFF_THRESHOLD:F

.field public AUTO_ACTION_REC_CONFIDENCE_THRESHOLD:F

.field protected m_actionType:Ljava/lang/String;

.field private m_autoActionAttempted:Z

.field private m_autoActionType:I

.field protected m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

.field protected m_emailTypes:[I

.field protected m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

.field protected m_mru:Lcom/vlingo/client/core/mru/MRU;

.field protected m_phoneTypes:[I

.field private m_recognizerConfidenceScore:F

.field protected m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

.field private m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/vlingo/client/core/contacts/ContactsMatcher;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/core/contacts/ContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Z)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Z)V
    .registers 7
    .parameter "listener"
    .parameter "useGroupedSortedContacts"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/high16 v0, 0x4198

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MATCH_SCORE_THRESHOLD:F

    .line 32
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MRU_DIFF_THRESHOLD:F

    .line 33
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MATCH_DIFF_THRESHOLD:F

    .line 34
    iput v1, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MRU_ABS_THRESHOLD:F

    .line 35
    iput v1, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_REC_CONFIDENCE_THRESHOLD:F

    .line 49
    iput-object v3, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 50
    iput v1, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_recognizerConfidenceScore:F

    .line 60
    iput v2, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionType:I

    .line 61
    iput-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionAttempted:Z

    .line 67
    iput-object v3, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    .line 79
    invoke-static {}, Lcom/vlingo/client/core/mru/MRU;->getMRU()Lcom/vlingo/client/core/mru/MRU;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    .line 80
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    .line 81
    invoke-virtual {p0, p2}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNewSortedContactList(Z)Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    .line 82
    new-instance v0, Lcom/vlingo/client/core/contacts/ContactSorter;

    iget-object v1, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {p0}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->getNewSortAlgorithm()Lcom/vlingo/client/core/util/SortAlgorithm;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/contacts/ContactSorter;-><init>(Lcom/vlingo/client/core/contacts/SortedContactList;Lcom/vlingo/client/core/util/SortAlgorithm;)V

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/contacts/SortedContactList;->setListener(Lcom/vlingo/client/core/contacts/ContactListListener;)V

    .line 85
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->initLogServer()V

    .line 86
    return-void
.end method

.method private attemptAutoAction()V
    .registers 15

    .prologue
    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 188
    iget v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionType:I

    if-eqz v12, :cond_1fa

    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v12, :cond_1fa

    .line 189
    iget-boolean v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionAttempted:Z

    if-nez v12, :cond_1fa

    .line 191
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_38

    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "attempting auto action: m_topChoice "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " autoActionType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 194
    :cond_38
    const/4 v1, 0x0

    .line 195
    .local v1, count:I
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v12, :cond_3f

    add-int/lit8 v1, v1, 0x1

    .line 196
    :cond_3f
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v12}, Lcom/vlingo/client/core/contacts/SortedContactList;->getNumDisplayItems()I

    move-result v12

    add-int/2addr v1, v12

    .line 198
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_72

    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Count "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is Sorting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v13}, Lcom/vlingo/client/core/contacts/ContactSorter;->isSorting()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 201
    :cond_72
    if-gt v1, v0, :cond_7e

    if-lez v1, :cond_1f1

    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v12}, Lcom/vlingo/client/core/contacts/ContactSorter;->isSorting()Z

    move-result v12

    if-nez v12, :cond_1f1

    .line 203
    :cond_7e
    iput-boolean v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionAttempted:Z

    .line 204
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_b5

    .line 205
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rec Confidence Score "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_recognizerConfidenceScore:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " THRESH "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_REC_CONFIDENCE_THRESHOLD:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 207
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_mru:Lcom/vlingo/client/core/mru/MRU;

    iget-object v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_actionType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/vlingo/client/core/mru/MRU;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 210
    :cond_b5
    iget v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_recognizerConfidenceScore:F

    iget v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_REC_CONFIDENCE_THRESHOLD:F

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1f1

    .line 211
    new-instance v3, Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-direct {v3, v12, v11}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    .line 212
    .local v3, firstChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    const/4 v5, 0x0

    .line 213
    .local v5, firstChoiceMRUScore:F
    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v4

    .line 214
    .local v4, firstChoiceDetail:Lcom/vlingo/client/core/contacts/ContactDetail;
    if-eqz v4, :cond_cf

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/ContactDetail;->getScore()F

    move-result v5

    .line 216
    :cond_cf
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_f7

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "firstChoiceMRUScore "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AUTO_ACTION_MRU_ABS_THRESHOLD "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MRU_ABS_THRESHOLD:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 220
    :cond_f7
    iget v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MRU_ABS_THRESHOLD:F

    cmpl-float v12, v5, v12

    if-ltz v12, :cond_1f1

    .line 221
    const/4 v8, 0x0

    .line 222
    .local v8, secondChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v12}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v12

    if-le v12, v0, :cond_10d

    .line 223
    new-instance v8, Lcom/vlingo/client/core/contacts/DisplayItem;

    .end local v8           #secondChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-direct {v8, v12, v0}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    .line 225
    .restart local v8       #secondChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_10d
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v12}, Lcom/vlingo/client/core/contacts/SortedContactList;->getNumDisplayItems()I

    move-result v12

    if-lez v12, :cond_183

    .line 226
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v12, v11}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v10

    .line 227
    .local v10, secondContactChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v12, v10, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v12, v11}, Lcom/vlingo/client/core/contacts/VlingoContact;->getScore(Z)F

    move-result v9

    .line 228
    .local v9, secondChoiceScore:F
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v12, v11}, Lcom/vlingo/client/core/contacts/VlingoContact;->getScore(Z)F

    move-result v6

    .line 231
    .local v6, firstChoiceScore:F
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_159

    .line 232
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "secondChoiceScore "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " firstChoiceScore "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AUTO_ACTION_MATCH_DIFF_THRESHOLD "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MATCH_DIFF_THRESHOLD:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 234
    :cond_159
    iget v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MATCH_DIFF_THRESHOLD:F

    sub-float v12, v6, v12

    cmpl-float v12, v9, v12

    if-lez v12, :cond_183

    .line 235
    if-eqz v8, :cond_177

    invoke-virtual {v10}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vlingo/client/core/contacts/ContactDetail;->getScore()F

    move-result v12

    invoke-virtual {v8}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vlingo/client/core/contacts/ContactDetail;->getScore()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_183

    .line 236
    :cond_177
    move-object v8, v10

    .line 238
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_183

    .line 239
    const-string v12, "Using second choice from next contact"

    invoke-static {v12}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 244
    .end local v6           #firstChoiceScore:F
    .end local v9           #secondChoiceScore:F
    .end local v10           #secondContactChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_183
    iget-object v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v12, v11}, Lcom/vlingo/client/core/contacts/VlingoContact;->getScore(Z)F

    move-result v7

    .line 245
    .local v7, score:F
    const/high16 v2, 0x447a

    .line 246
    .local v2, diffScore:F
    if-eqz v8, :cond_191

    invoke-static {v3, v8}, Lcom/vlingo/client/core/contacts/SortedContactList;->MRUDiffToNextChoice(Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;)F

    move-result v2

    .line 249
    :cond_191
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_1cf

    .line 250
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "score "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AUTO_ACTION_MATCH_SCORE_THRESHOLD "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MATCH_SCORE_THRESHOLD:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " diffScore "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AUTO_ACTION_MRU_DIFF_THRESHOLD "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MRU_DIFF_THRESHOLD:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 251
    :cond_1cf
    iget v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MATCH_SCORE_THRESHOLD:F

    cmpl-float v12, v7, v12

    if-ltz v12, :cond_1fb

    iget v12, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->AUTO_ACTION_MRU_DIFF_THRESHOLD:F

    cmpl-float v12, v2, v12

    if-lez v12, :cond_1fb

    .line 253
    .local v0, autoAction:Z
    :goto_1db
    if-eqz v0, :cond_1f1

    .line 254
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_1e8

    .line 255
    const-string v11, "Attempting autoAction"

    invoke-static {v11}, Lcom/vlingo/client/core/logging/LogServerMgr;->addToLogString(Ljava/lang/String;)V

    .line 256
    :cond_1e8
    iget-object v11, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    if-eqz v11, :cond_1f1

    iget-object v11, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    invoke-interface {v11, v3}, Lcom/vlingo/client/core/contacts/ContactsMatcherListener;->onAutoAction(Lcom/vlingo/client/core/contacts/DisplayItem;)V

    .line 273
    .end local v0           #autoAction:Z
    .end local v2           #diffScore:F
    .end local v3           #firstChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    .end local v4           #firstChoiceDetail:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v5           #firstChoiceMRUScore:F
    .end local v7           #score:F
    .end local v8           #secondChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_1f1
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_1fa

    .line 274
    invoke-static {}, Lcom/vlingo/client/core/logging/LogServerMgr;->sendToServer()V

    .line 277
    .end local v1           #count:I
    :cond_1fa
    return-void

    .restart local v1       #count:I
    .restart local v2       #diffScore:F
    .restart local v3       #firstChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    .restart local v4       #firstChoiceDetail:Lcom/vlingo/client/core/contacts/ContactDetail;
    .restart local v5       #firstChoiceMRUScore:F
    .restart local v7       #score:F
    .restart local v8       #secondChoice:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_1fb
    move v0, v11

    .line 251
    goto :goto_1db
.end method

.method public static notifyContactUsed(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "contactId"
    .parameter "address"
    .parameter "actionType"

    .prologue
    .line 178
    invoke-static {}, Lcom/vlingo/client/core/mru/MRU;->getMRU()Lcom/vlingo/client/core/mru/MRU;

    move-result-object v0

    .line 179
    .local v0, mru:Lcom/vlingo/client/core/mru/MRU;
    invoke-virtual {v0, p2, p0, p1}, Lcom/vlingo/client/core/mru/MRU;->incrementCount(Ljava/lang/String;ILjava/lang/String;)F

    .line 180
    return-void
.end method


# virtual methods
.method public doneUpdate()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    invoke-interface {v0}, Lcom/vlingo/client/core/contacts/ContactsMatcherListener;->onContactMatchingFinished()V

    .line 114
    :cond_9
    return-void
.end method

.method protected abstract getNewSortAlgorithm()Lcom/vlingo/client/core/util/SortAlgorithm;
.end method

.method protected abstract getNewSortedContactList(Z)Lcom/vlingo/client/core/contacts/SortedContactList;
.end method

.method public getNumContacts()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/SortedContactList;->getNumDisplayItems()I

    move-result v0

    return v0
.end method

.method public getSearchResultCap()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactSorter;->getCap()I

    move-result v0

    return v0
.end method

.method public getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_sortedContacts:Lcom/vlingo/client/core/contacts/SortedContactList;

    return-object v0
.end method

.method public getTopChoice()Lcom/vlingo/client/core/contacts/VlingoContact;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    return-object v0
.end method

.method protected abstract handleStartSearch(Ljava/lang/String;)Lcom/vlingo/client/core/contacts/VlingoContact;
.end method

.method public initialize(Ljava/lang/String;[I[I)V
    .registers 4
    .parameter "actionType"
    .parameter "phoneTypes"
    .parameter "emailTypes"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_actionType:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_phoneTypes:[I

    .line 91
    iput-object p3, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_emailTypes:[I

    .line 92
    return-void
.end method

.method public listChanged()V
    .registers 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->attemptAutoAction()V

    .line 109
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    invoke-interface {v0}, Lcom/vlingo/client/core/contacts/ContactsMatcherListener;->onContactMatchResultsUpdate()V

    .line 110
    :cond_c
    return-void
.end method

.method public notifyContactUsed(ILjava/lang/String;)V
    .registers 4
    .parameter "contactId"
    .parameter "address"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_actionType:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->notifyContactUsed(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setAutoActionType(I)V
    .registers 2
    .parameter "autoActionType"

    .prologue
    .line 95
    iput p1, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionType:I

    .line 96
    return-void
.end method

.method public setListener(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    .line 100
    return-void
.end method

.method public setSearchResultCap(I)V
    .registers 3
    .parameter "cap"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/contacts/ContactSorter;->setCap(I)V

    .line 155
    return-void
.end method

.method public setSearchSynchronously(Z)V
    .registers 3
    .parameter "sync"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/contacts/ContactSorter;->setSortSynchronously(Z)V

    .line 163
    return-void
.end method

.method public setSkipBestMatch(Z)V
    .registers 3
    .parameter "skip"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/contacts/ContactSorter;->setSkipBestMatch(Z)V

    .line 171
    return-void
.end method

.method public startSearch(Ljava/lang/String;F)Lcom/vlingo/client/core/contacts/VlingoContact;
    .registers 10
    .parameter "query"
    .parameter "confidenceScore"

    .prologue
    const/4 v6, 0x1

    .line 125
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 126
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/contacts/ContactsMatcher;->handleStartSearch(Ljava/lang/String;)Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v4

    iput-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 128
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-nez v4, :cond_38

    if-eqz p1, :cond_38

    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 129
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, number:Ljava/lang/String;
    new-instance v0, Lcom/vlingo/client/core/contacts/VlingoContact;

    new-instance v4, Lcom/vlingo/client/core/contacts/CustomPhoneDetailProvider;

    invoke-direct {v4, v3}, Lcom/vlingo/client/core/contacts/CustomPhoneDetailProvider;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Lcom/vlingo/client/core/contacts/VlingoContact;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/contacts/ContactDetailProvider;)V

    .line 131
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->setId(I)V

    .line 132
    const/high16 v4, 0x4198

    invoke-virtual {v0, v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->setScore(F)V

    .line 133
    new-instance v1, Lcom/vlingo/client/core/contacts/ContactDetail;

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v6}, Lcom/vlingo/client/core/contacts/ContactDetail;-><init>(Ljava/lang/String;IZ)V

    .line 134
    .local v1, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->addDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)V

    .line 136
    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 139
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v1           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v3           #number:Ljava/lang/String;
    :cond_38
    iput p2, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_recognizerConfidenceScore:F

    .line 141
    iget v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5e

    .line 142
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v4, :cond_5e

    .line 143
    iput-boolean v6, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_autoActionAttempted:Z

    .line 144
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->getNumDetails()I

    move-result v4

    if-lez v4, :cond_5e

    .line 145
    new-instance v2, Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/vlingo/client/core/contacts/DisplayItem;-><init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V

    .line 146
    .local v2, item:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_listener:Lcom/vlingo/client/core/contacts/ContactsMatcherListener;

    invoke-interface {v4, v2}, Lcom/vlingo/client/core/contacts/ContactsMatcherListener;->onAutoAction(Lcom/vlingo/client/core/contacts/DisplayItem;)V

    .line 150
    .end local v2           #item:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_5e
    iget-object v4, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_topChoice:Lcom/vlingo/client/core/contacts/VlingoContact;

    return-object v4
.end method

.method public willSearchSynchronously()Z
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactSorter;->willSortSynchronously()Z

    move-result v0

    return v0
.end method

.method public willSkipBestMatch()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactsMatcher;->m_contactSorter:Lcom/vlingo/client/core/contacts/ContactSorter;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactSorter;->willSkipBestMatch()Z

    move-result v0

    return v0
.end method
