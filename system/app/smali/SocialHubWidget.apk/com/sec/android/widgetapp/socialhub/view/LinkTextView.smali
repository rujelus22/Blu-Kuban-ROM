.class public Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;
.super Landroid/widget/TextView;
.source "LinkTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;
    }
.end annotation


# instance fields
.field private bSetClickListener:Z

.field private isClicked:Z

.field private mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->bSetClickListener:Z

    .line 31
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->isClicked:Z

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->initialize(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->bSetClickListener:Z

    .line 31
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->isClicked:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->bSetClickListener:Z

    .line 31
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->isClicked:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->initialize(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->isClicked:Z

    return p1
.end method

.method private final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 13
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;>;"
    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 177
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 178
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 179
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 181
    .local v0, end:I
    if-eqz p5, :cond_1a

    invoke-interface {p5, p2, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 182
    :cond_1a
    new-instance v2, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;-><init>(Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;)V

    .line 183
    .local v2, spec:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p4, v1, p6}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;->url:Ljava/lang/String;

    .line 186
    iput v3, v2, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;->start:I

    .line 187
    iput v0, v2, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;->end:I

    .line 189
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 192
    .end local v0           #end:I
    .end local v2           #spec:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_32
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 52
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    .line 53
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    const/16 v2, 0x22

    const/16 v3, 0x90

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 56
    .local v0, m:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_1c

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_29

    .line 57
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 58
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    :cond_29
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setHighlightColor(I)V

    .line 66
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setLongClickable(Z)V

    .line 67
    return-void
.end method

.method private final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 14
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 196
    if-eqz p4, :cond_7

    .line 197
    invoke-interface {p4, p3, p1}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    :cond_7
    const/4 v7, 0x0

    .line 202
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_9
    array-length v0, p2

    if-ge v8, v0, :cond_4c

    .line 203
    const/4 v1, 0x1

    aget-object v3, p2, v8

    aget-object v0, p2, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 204
    const/4 v7, 0x1

    .line 207
    aget-object v4, p2, v8

    aget-object v0, p2, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    :cond_4c
    if-nez v7, :cond_61

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    :cond_61
    return-object p1

    .line 202
    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_9
.end method


# virtual methods
.method public isPlaySound()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 106
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->bSetClickListener:Z

    if-ne v1, v0, :cond_6

    .line 107
    const/4 v0, 0x0

    .line 108
    :cond_6
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 71
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->getSelectionStart()I

    move-result v3

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->getSelectionEnd()I

    move-result v4

    .line 81
    if-eq v3, v1, :cond_3d

    if-eq v4, v1, :cond_3d

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 95
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 102
    :cond_23
    :goto_23
    return v2

    .line 84
    :pswitch_24
    const-class v1, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;

    invoke-virtual {v0, v3, v4, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;

    .line 85
    if-eqz v1, :cond_23

    array-length v1, v1

    if-lez v1, :cond_23

    .line 86
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    const/16 v5, 0x21

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_23

    .line 99
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    goto :goto_23

    .line 82
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_24
    .end packed-switch
.end method

.method public performClick()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 118
    const-string v1, "LinkTextView"

    const-string v2, "performClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClicked - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->isClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->isClicked:Z

    if-nez v1, :cond_31

    .line 122
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->isClicked:Z

    .line 123
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$1;-><init>(Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    .line 135
    :cond_31
    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 144
    if-eqz p1, :cond_9

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->bSetClickListener:Z

    .line 150
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void

    .line 147
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->bSetClickListener:Z

    goto :goto_5
.end method

.method public setTextWithLink(Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 159
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    .local v2, string:Landroid/text/SpannableString;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;>;"
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "http://"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "https://"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "rtsp://"

    aput-object v5, v4, v0

    sget-object v5, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 165
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;

    .line 166
    .local v8, link:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;

    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;->url:Ljava/lang/String;

    invoke-direct {v0, v3, v6, v4}, Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/util/InternalURLSpan$OnUrlSpanClickListener;Ljava/lang/String;)V

    iget v3, v8, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;->start:I

    iget v4, v8, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;->end:I

    const/16 v5, 0x21

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_29

    .line 169
    .end local v8           #link:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView$LinkSpec;
    :cond_48
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method
