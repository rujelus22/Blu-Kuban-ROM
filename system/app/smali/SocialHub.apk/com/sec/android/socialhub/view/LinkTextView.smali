.class public Lcom/sec/android/socialhub/view/LinkTextView;
.super Landroid/widget/TextView;
.source "LinkTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;
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

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->bSetClickListener:Z

    .line 42
    iput-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    .line 44
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->isClicked:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/LinkTextView;->initialize(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->bSetClickListener:Z

    .line 42
    iput-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    .line 44
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->isClicked:Z

    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/LinkTextView;->initialize(Landroid/content/Context;)V

    .line 57
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

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->bSetClickListener:Z

    .line 42
    iput-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    .line 44
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->isClicked:Z

    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/LinkTextView;->initialize(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/view/LinkTextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->isClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/view/LinkTextView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    return-object v0
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
            "Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;",
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
    .line 255
    .local p1, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;>;"
    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 257
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 258
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 259
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 261
    .local v0, end:I
    if-eqz p5, :cond_1a

    invoke-interface {p5, p2, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 262
    :cond_1a
    new-instance v2, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;-><init>(Lcom/sec/android/socialhub/view/LinkTextView;)V

    .line 263
    .local v2, spec:Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p4, v1, p6}, Lcom/sec/android/socialhub/view/LinkTextView;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;->url:Ljava/lang/String;

    .line 266
    iput v3, v2, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;->start:I

    .line 267
    iput v0, v2, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;->end:I

    .line 269
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 272
    .end local v0           #end:I
    .end local v2           #spec:Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;
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

    .line 67
    iput-object p1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    .line 69
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    const/16 v2, 0x22

    const/16 v3, 0x90

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/LinkTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 73
    .local v0, m:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_1c

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_29

    .line 74
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/LinkTextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 75
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/LinkTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 79
    :cond_29
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/view/LinkTextView;->setHighlightColor(I)V

    .line 80
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

    .line 276
    if-eqz p4, :cond_7

    .line 277
    invoke-interface {p4, p3, p1}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 280
    :cond_7
    const/4 v7, 0x0

    .line 282
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_9
    array-length v0, p2

    if-ge v8, v0, :cond_4c

    .line 283
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

    .line 285
    const/4 v7, 0x1

    .line 288
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

    .line 290
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

    .line 297
    :cond_4c
    if-nez v7, :cond_61

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 301
    :cond_61
    return-object p1

    .line 282
    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_9
.end method


# virtual methods
.method public isPlaySound()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 134
    iget-boolean v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->bSetClickListener:Z

    if-ne v1, v0, :cond_6

    .line 135
    const/4 v0, 0x0

    .line 136
    :cond_6
    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/LinkTextView;->getSelectionStart()I

    move-result v2

    .line 195
    .local v2, start:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/LinkTextView;->getSelectionEnd()I

    move-result v1

    .line 200
    .local v1, end:I
    if-gez v2, :cond_d

    if-gez v1, :cond_d

    .line 225
    :cond_c
    :goto_c
    return-void

    .line 209
    :cond_d
    const v3, 0x7f08011f

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 211
    const v3, 0x7f0800f8

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 213
    .local v0, copy_url:Landroid/view/MenuItem;
    if-eqz v0, :cond_c

    .line 215
    new-instance v3, Lcom/sec/android/socialhub/view/LinkTextView$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/sec/android/socialhub/view/LinkTextView$2;-><init>(Lcom/sec/android/socialhub/view/LinkTextView;II)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 85
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/LinkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/LinkTextView;->getSelectionStart()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/LinkTextView;->getSelectionEnd()I

    move-result v4

    .line 101
    if-eq v3, v1, :cond_6d

    if-eq v4, v1, :cond_6d

    .line 103
    const-string v1, "LinkTextView"

    const-string v5, "onTouchEvent()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", end - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", event - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_74

    .line 119
    iget-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 129
    :cond_55
    :goto_55
    return v2

    .line 109
    :pswitch_56
    const-class v1, Lcom/sec/android/socialhub/view/InternalURLSpan;

    invoke-virtual {v0, v3, v4, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/socialhub/view/InternalURLSpan;

    .line 111
    if-eqz v1, :cond_55

    array-length v1, v1

    if-lez v1, :cond_55

    .line 113
    if-le v4, v3, :cond_55

    .line 114
    iget-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    const/16 v5, 0x21

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_55

    .line 126
    :cond_6d
    iget-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mBackgroundColor:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    goto :goto_55

    .line 105
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_56
    .end packed-switch
.end method

.method public performClick()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 146
    const-string v1, "LinkTextView"

    const-string v2, "performClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClicked - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/socialhub/view/LinkTextView;->isClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-boolean v1, p0, Lcom/sec/android/socialhub/view/LinkTextView;->isClicked:Z

    if-nez v1, :cond_31

    .line 150
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->isClicked:Z

    .line 151
    new-instance v0, Lcom/sec/android/socialhub/view/LinkTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/LinkTextView$1;-><init>(Lcom/sec/android/socialhub/view/LinkTextView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/LinkTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    .line 164
    :cond_31
    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 179
    if-eqz p1, :cond_9

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->bSetClickListener:Z

    .line 188
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void

    .line 185
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/LinkTextView;->bSetClickListener:Z

    goto :goto_5
.end method

.method public setTextWithLink(Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 236
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    .local v2, string:Landroid/text/SpannableString;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;>;"
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

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/view/LinkTextView;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 243
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;

    .line 245
    .local v8, link:Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;
    iget v0, v8, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;->end:I

    iget v3, v8, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;->start:I

    if-le v0, v3, :cond_29

    .line 246
    new-instance v0, Lcom/sec/android/socialhub/view/InternalURLSpan;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;->url:Ljava/lang/String;

    invoke-direct {v0, v3, v6, v4}, Lcom/sec/android/socialhub/view/InternalURLSpan;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/view/InternalURLSpan$OnUrlSpanClickListener;Ljava/lang/String;)V

    iget v3, v8, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;->start:I

    iget v4, v8, Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;->end:I

    const/16 v5, 0x21

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_29

    .line 249
    .end local v8           #link:Lcom/sec/android/socialhub/view/LinkTextView$LinkSpec;
    :cond_4e
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/view/LinkTextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method
